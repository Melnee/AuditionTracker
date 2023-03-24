require "administrate/base_dashboard"

class CastingDirectorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    audition_casting_directors: Field::HasMany,
    auditions: Field::HasMany,
    casting_agencies: Field::HasMany,
    casting_director_casting_agencies: Field::HasMany,
    email: Field::String,
    name: Field::String,
    notes: Field::Text,
    phone_number: Field::String,
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
    audition_casting_directors
    auditions
    casting_agencies
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    audition_casting_directors
    auditions
    casting_agencies
    casting_director_casting_agencies
    email
    name
    notes
    phone_number
    user
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    audition_casting_directors
    auditions
    casting_agencies
    casting_director_casting_agencies
    email
    name
    notes
    phone_number
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

  # Overwrite this method to customize how casting directors are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(casting_director)
  #   "CastingDirector ##{casting_director.id}"
  # end
end
