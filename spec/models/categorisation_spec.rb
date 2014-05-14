require 'spec_helper'

describe Categorisation do
  it { should belong_to(:recipe)}
  it { should belong_to(:category)}
end
