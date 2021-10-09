class Site::SearchController < SiteController
  def questions
    @questions = Question._seach_(params[:question], params[:page])
  end

  def subject
    @questions = Question._seach_subject(params[:subject_id], params[:page])
  end
end
