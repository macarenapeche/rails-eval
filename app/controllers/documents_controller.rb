class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit]
  def index
    @documents = Document.all
  end

  def show
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
  end

  def edit
  end

  def update
    @document = Document.new(document_params)
  end


  private 

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :user_id, :content)
  end


end
