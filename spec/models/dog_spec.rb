require 'spec_helper'

describe Dog do
  it {should have_valid(:name).when('Fido', 'Ralph')}
  it {should_not have_valid(:name).when('', nil)}

  it {should have_many(:dogcollections)}
  it {should have_many(:owners)}

  let(:owner1) {FactoryGirl.create(:owner)}
  let(:owner2) {FactoryGirl.create(:owner)}
  let(:dog) {FactoryGirl.create(:dog)}

  it 'properly relates multiple owners' do
    Dogcollection.create(owner_id: owner1.id, dog_id:dog.id)
    Dogcollection.create(owner_id: owner2.id, dog_id:dog.id)

    expect(dog.owners.count).to eql(2)
  end
end
