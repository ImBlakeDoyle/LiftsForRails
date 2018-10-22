class ExerciseStatsController < ApplicationController
  before_action :set_exercise_stat, only: [:show, :edit, :update, :destroy]

  # GET /exercise_stats
  # GET /exercise_stats.json
  def index
    @exercise_stats = ExerciseStat.all
  end

  # GET /exercise_stats/1
  # GET /exercise_stats/1.json
  def show
  end

  # GET /exercise_stats/new
  def new
    @exercise_stat = ExerciseStat.new
  end

  # GET /exercise_stats/1/edit
  def edit
  end

  # POST /exercise_stats
  # POST /exercise_stats.json
  def create
    @exercise_stat = ExerciseStat.new(exercise_stat_params)

    respond_to do |format|
      if @exercise_stat.save
        format.html { redirect_to @exercise_stat, notice: 'Exercise stat was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_stat }
      else
        format.html { render :new }
        format.json { render json: @exercise_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_stats/1
  # PATCH/PUT /exercise_stats/1.json
  def update
    respond_to do |format|
      if @exercise_stat.update(exercise_stat_params)
        format.html { redirect_to @exercise_stat, notice: 'Exercise stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_stat }
      else
        format.html { render :edit }
        format.json { render json: @exercise_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_stats/1
  # DELETE /exercise_stats/1.json
  def destroy
    @exercise_stat.destroy
    respond_to do |format|
      format.html { redirect_to exercise_stats_url, notice: 'Exercise stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_stat
      @exercise_stat = ExerciseStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_stat_params
      params.require(:exercise_stat).permit(:weight, :reps, :increase, :comments)
    end
end
