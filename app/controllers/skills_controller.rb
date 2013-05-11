class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end
  def create
    skill = Skill.new(params[:skill])
    if skill.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The skill couldn't be created."
    end
  end
  def edit
    @skill = Skill.find(params[:id])
  end
  def update
    @skill = Skill.find(params[:id])
    @skill.update_attributes(params[:skill])
    if @skill.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @skills = Skill.all
  end
  def show
    @skill = Skill.find(params[:id])
  end
  def destroy
    @skill = Skill.find(params[:id])
    if @skill
      @skill.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that skill to delete it"
    end
  end
end
