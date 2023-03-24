# frozen_string_literal: true

class Actor < ApplicationRecord
  belongs_to :user

  has_many :coach_actors, dependent: :destroy
  has_many :coaches, through: :coach_actors

  has_many :actor_agencies, dependent: :destroy
  has_many :agencies, through: :actor_agencies
end
