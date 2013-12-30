require 'spec_helper'

describe ContactInquiry do
  let (:blank_values) { [nil, ''] }

  it { should have_valid(:email).when('jfk@usa.com') }
  it { should_not have_valid(:email).when(*blank_values) }

  it { should have_valid(:subject).when('Linens') }
  it { should_not have_valid(:subject).when(*blank_values) }

  it { should have_valid(:description).when('sheets were scratchy') }
  it { should_not have_valid(:description).when(*blank_values) }

  it { should have_valid(:first_name).when('John') }
  it { should_not have_valid(:first_name).when(*blank_values) }

  it { should have_valid(:last_name).when('Kennedy') }
  it { should_not have_valid(:last_name).when(*blank_values) }
end
