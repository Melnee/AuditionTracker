require "administrate/base_dashboard"

class AuditionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    accent_was_required: Field::Boolean,
    age_range: Field::Number,
    agent_id: Field::Number,
    audition_casting_directors: Field::HasMany,
    booked: Field::Boolean,
    callback: Field::Boolean,
    casting_directors: Field::HasMany,
    chemistry_read: Field::Boolean,
    datetime: Field::DateTime,
    notes_from_room: Field::Text,
    project_medium: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    project_name: Field::String,
    role_description: Field::Text,
    role_name: Field::String,
    role_size: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    role_size_custom_input: Field::String,
    role_type: Field::Number,
    union_status: Field::Select.with_options(searchable: false, collection: ->(field) { field.resource.class.send(field.attribute.to_s.pluralize).keys }),
    user: Field::BelongsTo,
    who_booked_it_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    accent_was_required
    age_range
    agent_id
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    accent_was_required
    age_range
    agent_id
    audition_casting_directors
    booked
    callback
    casting_directors
    chemistry_read
    datetime
    notes_from_room
    project_medium
    project_name
    role_description
    role_name
    role_size
    role_size_custom_input
    role_type
    union_status
    user
    who_booked_it_id
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    accent_was_required
    age_range
    agent_id
    audition_casting_directors
    booked
    callback
    casting_directors
    chemistry_read
    datetime
    notes_from_room
    project_medium
    project_name
    role_description
    role_name
    role_size
    role_size_custom_input
    role_type
    union_status
    user
    who_booked_it_id
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how auditions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(audition)
  #   "Audition ##{audition.id}"
  # end
end
