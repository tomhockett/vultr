# frozen_string_literal: true

require_relative "vultr/version"
require "dotenv/load"

# Do Vultr Stuff
module Vultr
  # autoload here to keep load times small.
  # these files will only be loaded when the class object is accessed.
  autoload :Client, "vultr/client"
  autoload :Error, "vultr/error"
  autoload :Object, "vultr/object"

  autoload :Account, "vultr/objects/account"
  autoload :Instance, "vultr/objects/instance"
  autoload :Collection, "vultr/collection"
  autoload :Plan, "vultr/objects/plan"
end
