module SiteHelper
  def msg_jumbotron
    if params[:question]
      "Resultados para \"#{params[:question]}\":"
    elsif params[:subject_id]
      "Resultados para \"#{params[:subject_name]}\":"
    else
      'Ultimas Perguntas Cadastradas'
    end
  end
end
