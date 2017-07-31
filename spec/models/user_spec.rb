require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when('Mike', 'Stark') }
  it { should_not have_valid(:first_name).when('', nil) }

  it { should have_valid(:last_name).when('Jack', 'Many') }
  it { should_not have_valid(:last_name).when('', nil) }

  it { should have_valid(:email).when('bob34@gmail.com', 'minion87@aol.com') }
  it { should_not have_valid(:email).when('', nil, 'oreo', 'reahir.com', 'hello@') }

  it { should have_valid(:password).when(123456, 'hellomynameisbob') }
  it { should_not have_valid(:password).when(nil, "")}
end
