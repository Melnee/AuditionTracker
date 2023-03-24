# frozen_string_literal: true

class CastingAgency < ApplicationRecord
  belongs_to :user

  has_many :casting_director_casting_agencies, dependent: :destroy
  has_many :casting_directors, through: :casting_director_casting_agencies
end
