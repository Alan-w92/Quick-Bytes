require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to :list }

  it { should have_valid(:description).when('Remember to shop after work.') }
  it { should_not have_valid(:description).when('', nil) }
end
