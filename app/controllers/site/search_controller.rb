class Site::SearchController < SiteController
  def questions
    @questions = Question.seach(params[:q], params[:page])
  end
end
