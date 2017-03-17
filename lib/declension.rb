require "declension/version"
require "declension/base_group"
require "declension/name"
require "declension/name/first_group"
require "declension/name/second_group"
require "declension/name/third_group"
require "declension/name/group_selector"

module Declension
  class << self
    def setup
      yield(self)
    end
  end
end
