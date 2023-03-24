require "administrate/base_dashboard"

class CastingDirectorCastingAgencyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    casting_agencies_id: Field::Number,
    casting_agency: Field::BelongsTo,
    casting_director: Field::BelongsTo,
    is_assistant: Field::Boolean,
    is_associate: Field::Boolean,
    user: Field::BelongsTo,
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
    casting_agencies_id
    casting_agency
    casting_director
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    casting_agencies_id
    casting_agency
    casting_director
    is_assistant
    is_associate
    user
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    casting_agencies_id
    casting_agency
    casting_director
    is_assistant
    is_associate
    user
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

  # Overwrite this method to customize how casting director casting agencies are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(casting_director_casting_agency)
  #   "CastingDirectorCastingAgency ##{casting_director_casting_agency.id}"
  # end
end
