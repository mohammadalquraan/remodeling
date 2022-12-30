
buyer = Buyer.find_or_create_by(name:"kafka")
buyer.update(email:"kafka@gmail.com",phone_number:"3023524235",active:false)

%w[windows roofing solar].each do |service_name|
  service = Service.find_by(name:service_name)
  next if service.blank?
  buyer.service_buyers.find_or_create_by(service_id:service.id).update(active:true)
end


# To do => load buyer locations from list of zip codes
active_locations = []
(99501..99520).each do |zip_code|
  location = Location.find_by(zip_code:zip_code)
  next if location.blank?
  active_locations << location.id
  buyer.buyer_locations.find_or_create_by(location_id:location.id).update(active:true)
end


# delete the location if not in the list if zip codes
buyer.buyer_locations.where.not(location_id:active_locations).update(active:false)
