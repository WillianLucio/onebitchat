ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'gmail.com',
    :user_name            => 'willian.l.lucio@gmail.com',
    :password             => 'your_password',
    :authentication       => 'plain',
    :enable_starttls_auto => true 
  }
  # Para debug apenas, é melhor que a linha abaixo seja adicionado apenas no ambiente de desenvolvimento
ActionMailer::Base.raise_delivery_errors = true