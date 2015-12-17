require "interleave/version"
require 'colorize'
require 'open3'

module Interleave

  Colors = [:yellow, :red]

  def self.start

    ARGV.map.with_index do |cmd, i|
      puts "Running #{cmd}".send Colors[i]
      Open3.popen3 cmd
    end.
    tap {|e| sleep 2 }.
    each_with_index do |(r,o,e,t), i|
      r.close
      Thread.new do
        loop { puts o.readline.send Colors[i] }
      end
    end

    Thread.new do
      loop do
        puts Time.now.to_s.light_black
        sleep 0.1
      end
    end

    loop {sleep 1}
  end

end
