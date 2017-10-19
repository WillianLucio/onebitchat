# Instala as Gems
bundle check || bundle install
# Roda nosso Servidor
bundle exec puma -C config/puma.rb
