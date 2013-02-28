# -*- coding: utf-8 -*-

require 'attr_lazy/version'

module AttrLazy
  def attr_lazy_reader(reader_name, &block)
    define_method(reader_name) do
      instance_variable_get("@#{reader_name}") ||
        instance_variable_set("@#{reader_name}", instance_eval(&block))
    end
  end

  def attr_lazy_accessor(accessor_name, &block)
    attr_lazy_reader(accessor_name, &block)
    define_method("#{accessor_name}=") do |value|
      instance_variable_set("@#{accessor_name}", value)
    end
  end
end

class Module
  include AttrLazy
end
