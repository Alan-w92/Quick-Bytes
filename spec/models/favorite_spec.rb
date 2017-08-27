require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should belong_to :user }

  it { should have_valid(:title).when('Chicken Pizza', 'Rice with shrimp') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:image).when('https://www.smashingmagazine.com/wp-content/uploads/2015/06/10-dithering-opt.jpg') }
  it { should_not have_valid(:image).when('', nil) }

  it { should have_valid(:serving).when('3') }
  it { should_not have_valid(:serving).when('', nil) }

  it { should have_valid(:calorie).when('1430') }
  it { should_not have_valid(:calorie).when('', nil) }

  it { should have_valid(:element).when('Peppers', 'Rice') }
  it { should_not have_valid(:element).when('', nil) }

  it { should have_valid(:url).when('https://www.google.com') }
  it { should_not have_valid(:url).when('', nil) }
end
