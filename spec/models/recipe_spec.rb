require 'spec_helper'

describe Recipe do
  it { should have_many(:categorisations)}
  it { should have_many(:categories).through(:categorisations)}
end
