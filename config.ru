require 'rubygems'
require 'bundler'
Bundler.require
require "active_support/core_ext/numeric/time"

$stdout.sync = true

require File.dirname(__FILE__) + "/home_brew/base.rb"
Dir[File.dirname(__FILE__) + "/home_brew/*.rb"].each {|file| require file }

run HomeBrew::Inventory
