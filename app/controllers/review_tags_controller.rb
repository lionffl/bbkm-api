class ReviewTagsController < ApplicationController
  before_action :set_review_tag, only: %i[ show update destroy ]

  # GET /review_tags
  def index
    @review_tags = ReviewTag.all

    render json: @review_tags
  end

  # GET /review_tags/1
  def show
    render json: @review_tag
  end

  # POST /review_tags
  def create
    @review_tag = ReviewTag.new(review_tag_params)

    if @review_tag.save
      render json: @review_tag, status: :created, location: @review_tag
    else
      render json: @review_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /review_tags/1
  def update
    if @review_tag.update(review_tag_params)
      render json: @review_tag
    else
      render json: @review_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /review_tags/1
  def destroy
    @review_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_tag
      @review_tag = ReviewTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_tag_params
      params.require(:review_tag).permit(:review_id, :tag_id)
    end
end
