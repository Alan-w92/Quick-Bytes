require 'rails_helper'

RSpec.describe List, type: :model do
  it { should belong_to :user }

  it { should have_valid(:recipe_name).when('Chicken Pizza', '30 min Tomato Soup') }
  it { should_not have_valid(:recipe_name).when('', nil) }
end
