class Localidad < ActiveRecord::Base
  attr_accessible :cp, :nombre, :region_id
end
