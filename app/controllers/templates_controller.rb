class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy]
  def index
    @templates = Template.all
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      redirect_to templates_path, notice: "Template Created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @template = Template.new
  end

  def edit
    # Edit Template
  end

  def show
    # Show Template
  end

  def update
    if @template.update(template_params)
      redirect_to templates_path, notice: "Template Updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @template.destroy
      redirect_to templates_path, notice: "Template Removed"
    else
      redirect_to templates_path, notice: "Unable to Remove Template"
    end
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def template_params
    params.require(:template).permit(:name, :body)
  end
end
