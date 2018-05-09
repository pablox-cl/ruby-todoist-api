module Todoist
  class Filter
    include Todoist::Resource
    extend Todoist::Resource::ClassMethods

    define_attributes %w(
      id
      name
      query
      color
      item_order
      is_deleted
      is_favorite
    )
  end
end
