# frozen_string_literal: true

require "ostruct"

module Vultr
  # uses metaprogramming to create the methods we need from the JSON return
  class Object
    def initialize(attributes)
      @attributes = OpenStruct.new(attributes)
    end

    def method_missing(method, *args, &block)
      attribute = @attributes.send(method, *args, &block)
      attribute.is_a?(Hash) ? Object.new(attributes) : attribute
    end

    def respond_to_missing?(*)
      true
    end
  end
end
