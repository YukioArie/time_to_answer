class AdminsBackoffice::QuestionsController < AdminsBackofficeController
  before_action :set_question, only: %i[edit update destroy]
  before_action :get_subjects, only: %i[new edit]
  before_action :exists_description_by_question?, only: [:create]
  def index
    @questions =
      Question.includes(:subject).order(:description).page(params[:page])
  end

  def new
    console
    @question = Question.new
  end

  def create
    @question = Question.new(params_question)
    if @question.save
      redirect_to admins_backoffice_questions_path, notice: "Questão
   cadastrada com sucesso!"
    else
      render :new
    end
  end

  def edit
    console
  end

  def update
    if @question.update(params_question)
      redirect_to admins_backoffice_questions_path, notice: "Questão
     atualizada com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    if @question.destroy
      redirect_to admins_backoffice_questions_path, notice: "Questão
     excluída com sucesso!"
    else
      render :index
    end
  end

  private

  def params_question
    params.require(:question).permit(:description, :subject_id,
                                     answers_attributes: %i[id description correct _destroy])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def get_subjects
    @subjects = Subject.all
  end

  def exists_description_by_question?
    questions_description = Question.all.pluck(:description).map(&:downcase)
    if questions_description.include?(params['question']['description'].downcase)
      console
      @question = Question.new(description: params['question']['description'])
      get_subjects
      render :new
    end
  end
end
