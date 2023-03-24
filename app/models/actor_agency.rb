# frozen_string_literal: true

class ActorAgency < ApplicationRecord
  belongs_to :user

  belongs_to :actor
  belongs_to :agency
end
