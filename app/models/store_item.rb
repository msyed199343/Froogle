# == Schema Information
#
# Table name: store_items
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  price      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StoreItem < ApplicationRecord
   validates :name, :price, presence: true






    
    
end


