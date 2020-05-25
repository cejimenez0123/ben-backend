class CommercialSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id,:name,:user,:address,:max_occupancy,:city,:state,:zipcode
end
