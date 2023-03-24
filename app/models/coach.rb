# frozen_string_literal: true

class Coach < ApplicationRecord
  belongs_to :user

  has_many :coach_actors, dependent: :destroy
  has_many :actors, through: :coach_actors
end
