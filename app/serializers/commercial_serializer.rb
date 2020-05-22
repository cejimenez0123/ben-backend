class CommercialSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name,:user,:address,:city,:state,:zipcode,
end
