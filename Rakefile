#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

# Wrap Rails sanity.  Jeff Casimir/'On the Golden Path'
# [:generate, :destroy, :server, :console].each do | command |
#   desc "Proof-of-concept rails CLI proxy for #{command}"
#   task command do
#     system "rails #{command} #{ARGV[1..-1].join(' ')}"
#     exit
#   end
# end

ReadingRainbow::Application.load_tasks
