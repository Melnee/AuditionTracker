# frozen_string_literal: true

class CastingDirector < ApplicationRecord
  belongs_to :user

  has_many :audition_casting_directors, dependent: :destroy
  has_many :auditions, through: :audition_casting_directors

  has_many :casting_director_casting_agencies, dependent: :destroy
  has_many :casting_agencies, through: :casting_director_casting_agencies
end
