# -*- coding: utf-8 -*-

require 'spec_helper'

describe AttrLazy do
  let(:cat) do
    Class.new {
      attr_lazy_reader(:name) do
        :nyan
      end

      attr_lazy_accessor(:color) do
        :black
      end
    }.new
  end

  describe '#attr_lazy_reader' do
    it 'should define reader' do
      cat.should be_respond_to(:name)
      cat.instance_variable_get(:@name).should == nil
      cat.name.should == :nyan
      cat.instance_variable_get(:@name).should == :nyan
    end
  end

  describe '#attr_lazy_accessor' do
    it 'should define accessor' do
      cat.should be_respond_to(:color)
      cat.instance_variable_get(:@color).should == nil
      cat.color.should == :black
      cat.instance_variable_get(:@color).should == :black
      cat.should be_respond_to(:color=)
      cat.color = :white
      cat.color.should == :white
      cat.instance_variable_get(:@color).should == :white
    end
  end
end
