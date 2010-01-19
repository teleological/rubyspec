require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../fixtures/common'
require File.dirname(__FILE__) + '/shared/load'
require File.dirname(__FILE__) + '/shared/require'

describe "Kernel#load" do
  it "is a private method" do
    Kernel.should have_private_instance_method(:load)
  end

  it_behaves_like :kernel_require_basic, :load, CodeLoadingSpecs::Method.new

  it_behaves_like :kernel_load, :load, CodeLoadingSpecs::Method.new
end

describe "Kernel.load" do
  it_behaves_like :kernel_require_basic, :load, Kernel

  it_behaves_like :kernel_load, :load, Kernel
end
