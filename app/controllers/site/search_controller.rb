class Site::SearchController < SiteController
  def questions
    @questions = Question._seach_(params[:q], params[:page])
  end
end
