# frozen_string_literal: true

require 'simplecov'
SimpleCov.start do
  track_files 'lib/**/*.rb'
  add_filter '/spec/'
end

if ENV['CI']
  begin
    require 'coveralls'
    Coveralls.wear!
  rescue LoadError
    nil
  end
end

require 'rspec'

require 'happymapper'

def fixture_file(filename)
  File.read(File.dirname(__FILE__) + "/fixtures/#{filename}")
end
