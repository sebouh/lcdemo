class Cove < ActiveRecord::Base
validates :title, :presence=>true, :length=>{:minimum => 1,:maximum=> 9 }
validates :title, :uniqueness=>true
end
