class Admin::JobsController < ApplicationController
  before_action :authenticate_user!

  before_action :find_jobs, only: [:edit,:update,:destroy]

  before_action :require_is_admin

  layout 'admin'

  def index
    @jobs = case params[:is_hidden]
            when "true"
              Job.where(:is_hidden => true).paged(params[:page]).recent
            when "false"
              Job.where(:is_hidden => false).paged(params[:page]).recent
            else
              Job.all.paged(params[:page]).recent
            end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to admin_jobs_path, notice: "#{@job.title} created"
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
      redirect_to admin_jobs_path, notice: "#{@job.title} updated"
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to admin_jobs_path, alert: "#{@job.title} deleted"
  end

  def publish
    @job = Job.find(params[:id])
    @job.publish!
    redirect_to :back, notice: "#{@job.title} is published"
  end

  def hide
    @job = Job.find(params[:id])
    @job.hide!
    redirect_to :back, notice: "#{@job.title} is hidden"
  end

  private

  def job_params
    params.require(:job).permit(:title, :description, :city,:company, :wage_lower_bound, :wage_upper_bound,:contact_email,:is_hidden)
  end

  def find_jobs
    @job = Job.find(params[:id])
  end



end
