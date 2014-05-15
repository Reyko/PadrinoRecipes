require 'spec_helper'

describe Chef do
  it { should have_many :recipes }
end
