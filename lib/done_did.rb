#!/usr/bin/env ruby
require 'tempfile'

# Add a new task to the list of done tasks
class DoneDid
  def initialize(*args)
    @file = File.expand_path('~/.done.txt')
    @editor = ENV['EDITOR']
  end

  # Ask the user to fill the message in his editor
  def prompt
    tmp = Tempfile.new('done')
    begin
      system("#{@editor} #{tmp.path}")
      message = File.open(tmp.path).read
    ensure
      tmp.close
      tmp.unlink
    end
    message
  end

  def done(message)
    message = prompt if message.nil?
    date = Time.now.strftime('[%Y-%m-%d]:')
    File.open(@file, 'a') do |file|
      file.puts "#{date} #{message}"
    end
  end

  def did
    system("#{@editor} #{@file}")
  end
end
