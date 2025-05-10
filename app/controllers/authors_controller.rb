# frozen_string_literal: true

class AuthorsController < ApplicationController
  def new_modal
    @author = Author.new
  end
end
