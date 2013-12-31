require 'spec_helper'

describe Inventory do
  let(:blank) { [nil,''] }

  it { should have_valid(:title).when('Donut') }
  it { should_not have_valid(:title).when(*blank) }

  it { should have_valid(:description).when('Delicious') }
  it { should_not have_valid(:description).when(*blank) }

  it { should have_valid(:quantity).when(12) }
  it { should_not have_valid(:quantity).when(*blank) }
end
