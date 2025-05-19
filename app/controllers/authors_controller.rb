# frozen_string_literal: true

class AuthorsController < ApplicationController
  def create
    @author = Author.new(author_params)
    if @author.save
      render new_entry_path, notice: 'Author successfully created.'
    else
      render :new_modal, status: :unprocessable_entity
    end
  end

  def new_modal
    @author = Author.new
  end

  def author_params
    params.expect(author: %i[first_name last_name distinction])
  end
end
