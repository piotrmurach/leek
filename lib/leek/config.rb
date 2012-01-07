module Leek
  class Config

    attr_writer :dirs

    def initialize &block
      configure(&block) if block_given?
    end

    def configure &block
      yield self
    end

    def dirs
      @dirs ||= []
    end

  end
end
