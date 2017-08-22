class JobsController < ApplicationController
  before_action :authenticate_user!

  before_action :find_jobs, only: [:edit,:update,:destroy]

  def index
    @jobs = Job.all
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
