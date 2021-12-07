# frozen_string_literal: true

module Vultr
  # Vultr::Collection.from_response client.connection.get(
  #   "plans", { per_page: 5 },
  #   { Authorization: "Bearer #{client.api_key}" }
  # ),
  # key: "plans", type: Vultr::Plan
  class Collection
    attr_reader :data, :total, :next_cursor, :prev_cursor

    def self.from_response(response, key:, type:)
      body = response.body
      new(
        data: body[key].map { |attrs| type.new(attrs) },
        total: body.dig("meta", "total"),
        next_cursor: body.dig("meta", "links", "next"),
        prev_cursor: body.dig("meta", "links", "prev")
      )
    end

    def initialize(data:, total:, next_cursor:, prev_cursor:)
      @data = data
      @total = total
      @next_cursor = next_cursor.empty? ? nil : next_cursor
      @prev_cursor = prev_cursor.empty? ? nil : prev_cursor
    end
  end
end
