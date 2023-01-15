class StaticController < ApplicationController
  def index
    @tutors= Tutor.all
  end
end
