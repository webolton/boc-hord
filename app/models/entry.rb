# frozen_string_literal: true

class Entry < ApplicationRecord
  has_many :authors, through: :authors_entries
end
