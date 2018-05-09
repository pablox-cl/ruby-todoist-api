require "spec_helper"

describe Todoist::Filter do

  it "can be built from json" do
    instance = described_class.new(json_response('filter'))

    expect(instance.attributes).to eq({
      "id"=>4638878,
      "name"=>"Priority 1",
      "query"=>"priority 1",
      "color"=>6,
      "item_order"=>3,
      "is_deleted"=>0,
      "is_favorite"=>0
      }
    )
  end
end
