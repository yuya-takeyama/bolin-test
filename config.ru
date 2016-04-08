require 'bundler/setup'
require 'bolin'

ENV['http_proxy'] = ENV['FIXIE_URL'] if ENV['FIXIE_URL']
bot = Bolin::Bot.new(ENV['LINE_CHANNEL_ID'], ENV['LINE_CHANNEL_SECRET'], ENV['LINE_CHANNEL_MID'])

bot.text /foo/ do
  puts "foo is coming"
end

run bot.callback
