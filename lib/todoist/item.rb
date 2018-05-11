module Todoist
  class Item
    include Todoist::Resource
    extend Todoist::Resource::ClassMethods

    define_attributes %w(
      id
      user_id
      project_id
      content
      date_string
      date_lang
      due_date_utc
      priority
      indent
      item_order
      day_order
      collapsed
      labels
      assigned_by_uid
      responsible_uid
      checked
      in_history
      is_deleted
      is_archived
      sync_id
      date_added

      all_day
      date_completed
      parent_id
    )


    def project=(project)
      self.project_id = project.to_hash['id']
    end

    def user=(user)
      self.user_id = user.to_hash['id']
    end

  end
end
