# frozen_string_literal: true

class CastingDirectorCastingAgency < ApplicationRecord
  belongs_to :user

  belongs_to :casting_director
  belongs_to :casting_agency
end
