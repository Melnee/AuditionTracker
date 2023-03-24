# frozen_string_literal: true

class CoachActor < ApplicationRecord
  belongs_to :user

  belongs_to :coach
  belongs_to :actor
end
