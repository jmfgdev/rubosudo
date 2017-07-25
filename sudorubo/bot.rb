#!/usr/bin/env ruby

# rubosudo is a remake of sudobot in Ruby, and it is licensed under a stronger copyleft license, the AGPLv3, see below.

=begin 
Copyright © 2017 jimmybot@teknik.io
This program is free software: you can redistribute it and/or modify 
it under the terms of the GNU Affero General Public License as published by 
the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version.
This program is distributed in the hope that it will be useful, 
but WITHOUT ANY WARRANTY; without even the implied warranty of 
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the 
GNU Affero General Public License for more details.
You should have received a copy of the GNU Affero General Public License 
along with this program. If not, see <https://www.gnu.org/licenses/>
=end

require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV["RUBO_SECRET"], client_id: 339420887008935938, prefix: "sudo "

  trap "SIGINT" do
    abort
  end

rbv = `ruby -v`

puts nil
puts "rubosudo running on --> #{rbv}"
puts nil
puts "Invite link: https://discordapp.com/oauth2/authorize?client_id=339420887008935938&scope=bot&permissions=68608"
puts 'Click on it to invite it to your server.'
puts nil
puts "Establishing connection to Discord with WebSocket"

  bot.command :ping do |event|
	  event.respond "Pong!\n\nThat took `#{((Time.now - event.timestamp) * 1000).to_i}ms`"
  end

bot.run