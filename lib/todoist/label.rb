module Todoist
  class Label
    include Todoist::Resource
    extend Todoist::Resource::ClassMethods

    define_attributes %w(
      id
      name
      color
      item_order
      is_deleted
      is_favorite
    )
  end
end
