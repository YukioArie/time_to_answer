namespace :dev do
  DEFAULT_PASSWORD = 123456
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando DB.....') { `rails db:drop` }
      show_spinner('Criando DB.....') { `rails db:create` }
      show_spinner('Migrando DB.....') { `rails db:migrate` }
      show_spinner('Adiciona o admin padrão.....') { `rails dev:add_default_admin` }
      show_spinner('Adiciona o usuário padrão.....') { `rails dev:add_default_user` }

    else
      puts 'Você não está em ambiente de desenvolvimento!'

    end
  end
  desc 'Adiciona o administrador padrão'
  task add_default_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end
  desc 'Adiciona o usuário padrão'
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  private

  def show_spinner(_msg)
    spinner = TTY::Spinner.new("[:spinner] #{_msg} ...", format: :pulse_2)
    spinner.auto_spin # Automatic animation with default interval
    yield
    spinner.stop('Concluído!') # Stop animation
  end
end
