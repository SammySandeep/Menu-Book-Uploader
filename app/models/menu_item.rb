require 'csv'

class MenuItem < ApplicationRecord

    validates :dish_name, presence: true
    validates_uniqueness_of :dish_name

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
          MenuItem.create(
            dish_name: row['dish_name'],
            dish_description: row['dish_description'],
            dish_type: row['dish_type'],
            allergens: row['allergens'],
            Category: row['Category'],
            Price: row['Price']
          )
        end
      end
    #   binding.pry
end
