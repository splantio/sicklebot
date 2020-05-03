class MultipleChoiceOptionsController < ApplicationController
  before_action :set_multiple_choice_option, only: [:show, :edit, :update, :destroy]

  # GET /multiple_choice_options
  # GET /multiple_choice_options.json
  def index
    @multiple_choice_options = MultipleChoiceOption.all
  end

  # GET /multiple_choice_options/1
  # GET /multiple_choice_options/1.json
  def show
  end

  # GET /multiple_choice_options/new
  def new
    @multiple_choice_option = MultipleChoiceOption.new
  end

  # GET /multiple_choice_options/1/edit
  def edit
  end

  # POST /multiple_choice_options
  # POST /multiple_choice_options.json
  def create
    @multiple_choice_option = MultipleChoiceOption.new(multiple_choice_option_params)

    respond_to do |format|
      if @multiple_choice_option.save
        format.html { redirect_to @multiple_choice_option, notice: 'Multiple choice option was successfully created.' }
        format.json { render :show, status: :created, location: @multiple_choice_option }
      else
        format.html { render :new }
        format.json { render json: @multiple_choice_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multiple_choice_options/1
  # PATCH/PUT /multiple_choice_options/1.json
  def update
    respond_to do |format|
      if @multiple_choice_option.update(multiple_choice_option_params)
        format.html { redirect_to @multiple_choice_option, notice: 'Multiple choice option was successfully updated.' }
        format.json { render :show, status: :ok, location: @multiple_choice_option }
      else
        format.html { render :edit }
        format.json { render json: @multiple_choice_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multiple_choice_options/1
  # DELETE /multiple_choice_options/1.json
  def destroy
    @multiple_choice_option.destroy
    respond_to do |format|
      format.html { redirect_to multiple_choice_options_url, notice: 'Multiple choice option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multiple_choice_option
      @multiple_choice_option = MultipleChoiceOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def multiple_choice_option_params
      params.require(:multiple_choice_option).permit(:question_id, :option)
    end
end
