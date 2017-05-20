# config.ru

require 'telegram'

Telegram.token = ENV['TELEGRAM_TOKEN']

class App < Bot
  on :echo do |update|
    update.message.chat.reply(update.message.text)
  end
end

run App.new

#tttffff
