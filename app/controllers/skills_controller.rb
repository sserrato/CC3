class SkillsController < ApplicationController
  def index
  end

  def new
    @skills = Skill.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

private
  def skills_params
    params.require(:skills).permit(:sk_block_mason, :sk_brick_mason, :sk_finisher, :sk_form_setter, :sk_stone_mason)
  end
end
