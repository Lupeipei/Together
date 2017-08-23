class JobsController < ApplicationController
  before_action :authenticate_user!

  before_action :find_jobs, only: [:edit,:update,:destroy]

  def index
    @jobs = case params[:order]
            when "by_lower_bound"
              Job.published.paged(params[:page]).order("wage_lower_bound DESC")
            when "by_upper_bound"
              Job.published.paged(params[:page]).order("wage_upper_bound DESC")
            else
              Job.published.paged(params[:page]).recent
            end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path, notice: "#{@job.title} created"
    else
      render :new
    end

  end

  def show
    @job = Job.find(params[:id])

    if @job.is_hidden
      flash[:warning] = "this job already archived"
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to jobs_path, notice: "#{@job.title} updated"
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, alert: "#{@job.title} deleted"
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :city,:company, :wage_lower_bound, :wage_upper_bound,:contact_email,:is_hidden)
  end

  def find_jobs
    @job = Job.find(params[:id])
  end
end
