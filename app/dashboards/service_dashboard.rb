require "administrate/base_dashboard"

class ServiceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    provider: Field::BelongsTo,
    project: Field::BelongsTo,
    tokens: Field::HasMany,
    id: Field::Number,
    api_key: Field::String,
    api_secret: Field::String,
    scope: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    options: Field::Text,
    register_app_url: Field::String,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :provider,
    :project,
    :tokens,
    :id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :provider,
    :project,
    :tokens,
    :api_key,
    :api_secret,
    :scope,
    :options,
    :register_app_url,
  ]
end
