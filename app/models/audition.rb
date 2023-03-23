# frozen_string_literal: true

class Audition < ApplicationRecord
  enum union_status: { SAG: 0, AEA: 1, 'Non-Union': 2 }
  enum project_medium: { Play: 0, Film: 1, TV: 2, Musical: 3 }
  enum role_size: { 'Co-Star': 0, 'Guest-Star': 1, Recurring: 2, Series: 3, Regular: 4, Principal: 5, Supporting: 6, Lead: 7, Ensemble: 8, Chorus: 9, Dancer: 10 }
end
