# frozen_string_literal: true

class Agency < ApplicationRecord
  belongs_to :user

  has_many :actor_agencies, dependent: :destroy
  has_many :actors, through: :actor_agencies
end
