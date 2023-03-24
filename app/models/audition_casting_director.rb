# frozen_string_literal: true

class AuditionCastingDirector < ApplicationRecord
  belongs_to :user

  belongs_to :audition
  belongs_to :casting_director
end
