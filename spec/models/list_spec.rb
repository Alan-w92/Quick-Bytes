require 'rails_helper'

RSpec.describe List, type: :model do
  it { should belong_to :user }

  it { should have_valid(:recipe_name).when('Chicken Pizza', '30 min Tomato Soup') }
  it { should_not have_valid(:recipe_name).when('', nil) }

  it { should have_valid(:ingredient).when('3 lbs Pasta', '3 oz pepper', 'bread') }
  it { should_not have_valid(:ingredient).when('', nil) }
end
