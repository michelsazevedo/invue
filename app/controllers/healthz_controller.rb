require 'etc'

class HealthzController < ApplicationController
  def index
    render plain: "#{RUBY_PLATFORM} #{Etc.nprocessors} cores"
  end
end
