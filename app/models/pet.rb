class Pet < ApplicationRecord

    has_many :pet_histories 
    belongs_to :client 
    
    delegate :count, to: :pet_histories, prefix: true

    def average_weight
        pet_histories.average(:weight)

    end

    def average_height
        pet_histories.average(:height)
    end

    def maximum_weight
        pet_histories.maximum(:weight)
    end

    def maximum_height
        pet_histories.maximum(:height)
    end

end
