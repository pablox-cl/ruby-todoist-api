require "spec_helper"

describe Todoist::Project do


  it "can be built from json" do
    instance = described_class.new(json_response('project'))

    expect(instance.attributes).to eq({"id"=>128501470, "name"=>"Project1", "color"=>1, "indent"=>1, "item_order"=>36, "collapsed"=>0, "shared"=>false, "is_deleted"=>0, "is_archived"=>0, "inbox_project"=>false, "is_favorite"=>0, "has_more_notes"=>false}
    )
  end
end
