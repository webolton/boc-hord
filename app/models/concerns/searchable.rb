# frozen_string_literal: true

module Searchable
  extend ActiveSupport::Concern

  class_methods do
    def starts_with(column, query)
      where("#{column} LIKE ?", "#{search_query(query)}%")
    end

    private

    def search_query(query)
      sanitize_sql_like(query.downcase)
    end
  end
end
