class ToolsController < ApplicationController

  def new
    @tool = Tool.new
    @office = Office.find(params[:office_id])
  end

  def create
    @office = Office.find(params[:office_id])
    @tool = @office.tools.create(tool_params)
    if(@tool.save)
      redirect_to office_path(@office)
    else
      render 'new'
    end
  end

  def show
    @tool = Tool.find(params[:office_id])
  end

  def edit
    @tool = Tool.find(params[:office_id])
  end

  def update
    @tool = Tool.find(params[:office_id])
    @office = Office.find(params[:id])
    if(@tool.update(tool_params))
      redirect_to office_path(@office)
    else
      render 'edit'
    end
  end

  def destroy
    @tool = Tool.find(params[:office_id])
    @office = Office.find(params[:id])
    @tool.destroy
    redirect_to office_path(@office)
  end

  private def tool_params
    params.require(:tool).permit(:name, :quantity)
  end
end
