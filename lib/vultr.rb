# frozen_string_literal: true

require_relative "vultr/version"
require "dotenv/load"

# Do Vultr Stuff
module Vultr
  autoload :Client, "vultr/client"
  autoload :Error, "vultr/error"
end
