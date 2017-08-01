require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it { should belong_to :list }

  it { should have_valid(:name).when('Green Pepper') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:quantity).when(3, '4 oz', '2 lb', '', nil) }
end
