module Leek
  module SpecHelpers

    def self.extended example_group
      example_group.use_leek example_group
    end

    def self.included example_group
      example_group.extend self
    end

    def use_leek describe_block

    end

  end
end
