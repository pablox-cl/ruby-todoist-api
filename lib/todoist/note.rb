module Todoist
  class Note
    include Todoist::Resource
    extend Todoist::Resource::ClassMethods

    define_attributes %w(
      id
      posted_uid
      item_id
      project_id
      content
      file_attachment
      uids_to_notify
      is_deleted
      is_archived
      posted
    )
  end
end
