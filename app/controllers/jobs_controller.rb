class JobsController < ApplicationController

  def inspect
      "This #{@job} is in need of #{@job.skills.sk_finisher}"
  end
  def to_s
    inspect
  end

  def index
    @jobs = Job.all
    @jobsArr = @jobs

  end

  def new
    @job = Job.new
    @job.skills.new
  end

  def create
    @job = Job.new job_params
    @skills = @job.skills.new
    if @job.save && @skills.save
      redirect_to jobs_path(@job.id)
    else
      render 'new'
    end
  end

  def show
    @job = Job.find_by(params[:id])
    @skills = @job.skills
    @skills.first(1)
  end

  def edit
    @job = Job.find(params[:id])
    @skill = @job.skills.first
  end #ends edit def

  def update
    @job = User.find(params[:id])
    @skill = @user.skills.first 

  def delete
  end

private
  def job_params
    params.require(:job).permit(:job_start,:job_end,:location_street, :location_city, :location_zip, :state, {:skills => [:sk_block_mason, :sk_brick_mason, :sk_finisher, :sk_stone_mason, :sk_form_setter]})
  end

end
