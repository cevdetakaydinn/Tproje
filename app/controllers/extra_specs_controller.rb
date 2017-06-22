class ExtraSpecsController < ApplicationController
  before_action :set_extra_spec, only: [:show, :edit, :update, :destroy]

  # GET /extra_specs
  # GET /extra_specs.json
  def index
    @extra_specs = ExtraSpec.all
  end

  # GET /extra_specs/1
  # GET /extra_specs/1.json
  def show
  end

  # GET /extra_specs/new
  def new
    @extra_spec = ExtraSpec.new
  end

  # GET /extra_specs/1/edit
  def edit
  end

  # POST /extra_specs
  # POST /extra_specs.json
  def create
    @extra_spec = ExtraSpec.new(extra_spec_params)

    respond_to do |format|
      if @extra_spec.save
        format.html { redirect_to @extra_spec, notice: 'Extra spec was successfully created.' }
        format.json { render :show, status: :created, location: @extra_spec }
      else
        format.html { render :new }
        format.json { render json: @extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_specs/1
  # PATCH/PUT /extra_specs/1.json
  def update
    respond_to do |format|
      if @extra_spec.update(extra_spec_params)
        format.html { redirect_to @extra_spec, notice: 'Extra spec was successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_spec }
      else
        format.html { render :edit }
        format.json { render json: @extra_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_specs/1
  # DELETE /extra_specs/1.json
  def destroy
    @extra_spec.destroy
    respond_to do |format|
      format.html { redirect_to extra_specs_url, notice: 'Extra spec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_spec
      @extra_spec = ExtraSpec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_spec_params
      params.require(:extra_spec).permit(:speciality)
    end
end
