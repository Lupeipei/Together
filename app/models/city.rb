class City < ApplicationRecord

  CITY = ["110000","310000","440100","440300","330100","510100"]
  validates_inclusion_of :city, :in => CITY

end
