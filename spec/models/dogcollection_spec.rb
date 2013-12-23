require 'spec_helper'

describe Dogcollection do
  it {should have_valid(:owner_id).when(1,4,4567)}
  it {should_not have_valid(:owner_id).when(nil, '', 'wedwef')}

  it {should have_valid(:dog_id).when(1,4,4567)}
  it {should_not have_valid(:dog_id).when(nil, '', 'wedwef')}

# Testing relations
  it {should belong_to(:owner)}
  it {should belong_to(:dog)}

end
