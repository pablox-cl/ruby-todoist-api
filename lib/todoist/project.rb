module Todoist
  class Project
    include Todoist::Resource
    extend Todoist::Resource::ClassMethods

    define_attributes %w(
      id
      name
      color
      indent
      item_order
      collapsed
      shared
      is_deleted
      is_archived
      is_favorite
      inbox_project
      team_inbox

      has_more_notes
    )

    def items
      @items ||= Service::Item.new(client)
    end


  end
end
