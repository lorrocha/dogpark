require 'spec_helper'

describe Owner do
  it {should have_valid(:first_name).when('Joe', 'Frank')}
  it {should_not have_valid(:first_name).when(nil, '')}

  it {should have_valid(:last_name).when('Joe', 'Frank')}
  it {should_not have_valid(:last_name).when(nil, '')}

  it {should have_valid(:email).when('wheee@aw.io', 'thisworkd@dhf.com')}
  it {should_not have_valid(:email).when(nil, '', 'so@r@', '3e@as.com.com')}

  #testing relations

  it {should have_many(:dogcollections)}
  it {should have_many(:dogs)}

  let(:dog1) {FactoryGirl.create(:dog)}
  let(:dog2) {FactoryGirl.create(:dog)}
  let(:owner) {FactoryGirl.create(:owner)}

  it 'properly relates multiple dogs' do
    Dogcollection.create(owner_id: owner.id, dog_id:dog1.id)
    Dogcollection.create(owner_id: owner.id, dog_id:dog2.id)

    expect(owner.dogs.count).to eql(2)
  end
end
