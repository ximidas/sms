Rails.application.routes.draw do
  root to: 'application#index'
  get 'create_task', to: 'application#create_task', as: 'create_task'
  post 'task_create', to: 'tasks#create', as: 'task_create'
  get 'task/[:task_id]', to: 'tasks#view', as: 'task_view'
  get 'database_numbers', to: 'application#database', as: 'database_numbers'
  get 'send_sms', to: 'application#send_sms', as: 'send_sms'
  post 'start_send_sms', to: 'sms#send_sms', as: 'start_send_sms'
  get 'parsing', to: 'application#parsing', as: 'parsing'
  get 'statistics', to: 'application#statistics', as: 'statistics'
  get 'sim_cards', to: 'application#sim_cards', as: 'sim_cards'
  post 'sim_cards/add_card', to: 'sim_cards#add_card', as: 'add_sim_card'
  post 'sim_cards/add_funds', to: 'sim_cards#add_funds', as: 'add_funds'
  get 'sim_cards/add_funds/[:id]', to: 'sim_cards#view_deposit_history', as: 'view_deposit_history'

  # Parsing

  # 999.md

  # Transport
  get '999md/passengers_cars', to: 'parser999md#cars_passengers', as: 'passengers_cars_999'
  get '999md/parts_for_cars', to: 'parser999md#parts_for_cars', as: 'parts_for_cars_999'
  get '999md/supplies_and_accessories', to: 'parser999md#supplies_and_accessories', as: 'supplies_and_accessories_999'
  get '999md/special_equipment_and_tools', to: 'parser999md#special_equipment_and_tools', as: 'special_equipment_and_tools_999'
  get '999md/auto_glass_and_optics', to: 'parser999md#auto_glass_and_optics', as: 'auto_glass_and_optics_999'
  get '999md/parts_for_trucks', to: 'parser999md#parts_for_trucks', as: 'parts_for_trucks_999'
  get '999md/wheel_and_tires', to: 'parser999md#wheel_and_tires', as: 'wheel_and_tires_999'
  get '999md/trailers', to: 'parser999md#trailers', as: 'trailers_999'
  get '999md/agriculture', to: 'parser999md#agriculture', as: 'agriculture_999'
  get '999md/special_equipment', to: 'parser999md#special_equipment', as: 'special_equipment_999'
  get '999md/snowmobiles_and_jet_ski', to: 'parser999md#snowmobiles_and_jet_ski', as: 'snowmobiles_and_jet_ski_999'
  get '999md/airplanes', to: 'parser999md#airplanes', as: 'airplanes_999'
  get '999md/buses_and_minibuses', to: 'parser999md#buses_and_minibuses', as: 'buses_and_minibuses_999'
  get '999md/trucks', to: 'parser999md#trucks', as: 'trucks_999'
  get '999md/motorcycles', to: 'parser999md#motorcycles', as: 'motorcycles_999'
  get '999md/spare_parts_for_motorcycles', to: 'parser999md#spare_parts_for_motorcycles', as: 'spare_parts_for_motorcycles_999'
  get '999md/moto_equipment', to: 'parser999md#moto_equipment', as: 'moto_equipment_999'
  get '999md/electric_scooters', to: 'parser999md#electric_scooters', as: 'electric_scooters_999'
  get '999md/gps_navigation', to: 'parser999md#gps_navigation', as: 'gps_navigation_999'
  get '999md/carcaraudio', to: 'parser999md#carcaraudio', as: 'carcaraudio_999'
  get '999md/acoustic', to: 'parser999md#acoustic', as: 'acoustic_999'
  get '999md/supplies_of_car_audio', to: 'parser999md#supplies_of_car_audio', as: 'supplies_of_car_audio_999'
  get '999md/video_recorders', to: 'parser999md#video_recorders', as: 'video_recorders_999'
  get '999md/radars_alarms', to: 'parser999md#radars_alarms', as: 'radars_alarms_999'
  get '999md/bicycles', to: 'parser999md#bicycles', as: 'bicycles_999'
  get '999md/bike_gear', to: 'parser999md#bike_gear', as: 'bike_gear_999'
  get '999md/spare_parts_for_bicycles', to: 'parser999md#spare_parts_for_bicycles', as: 'spare_parts_for_bicycles_999'
  get '999md/cargo', to: 'parser999md#cargo', as: 'cargo_999'
  get '999md/auto_service', to: 'parser999md#auto_service', as: 'auto_service_999'
  get '999md/rent_a_car', to: 'parser999md#rent_a_car', as: 'rent_a_car_999'
  get '999md/passenger', to: 'parser999md#passenger', as: 'passenger_999'
  get '999md/transport_miscellaneous', to: 'parser999md#transport_miscellaneous', as: 'transport_miscellaneous_999'

  # Business
  get '999md/current_business', to: 'parser999md#current_business', as: 'current_business_999'
  get '999md/sites_and_developing', to: 'parser999md#sites_and_developing', as: 'sites_and_developing_999'

  # Real Estate
  get '999md/appartaments_and_rooms', to: 'parser999md#appartaments_and_rooms', as: 'appartaments_and_rooms_999'
  get '999md/houses_and_garden', to: 'parser999md#houses_and_garden', as: 'houses_and_garden_999'
  get '999md/lands', to: 'parser999md#lands', as: 'lands_999'
  get '999md/commercial_real_estate', to: 'parser999md#commercial_real_estate', as: 'commercial_real_estate_999'
  get '999md/garages_and_parking', to: 'parser999md#garages_and_parking', as: 'garages_and_parking_999'
  get '999md/real_estate_miscellaneous', to: 'parser999md#real_estate_miscellaneous', as: 'real_estate_miscellaneous_999'
  get '999md/real_estate_services', to: 'parser999md#real_estate_services', as: 'real_estate_services_999'

  # Phones
  get '999md/mobile_phones', to: 'parser999md#mobile_phones', as: 'mobile_phones_999'
  get '999md/mobile_phones_accessories', to: 'parser999md#mobile_phones_accessories', as: 'mobile_phones_accessories_999'
  get '999md/mobile_phones_parts', to: 'parser999md#mobile_phones_parts', as: 'mobile_phones_parts_999'
  get '999md/mobile_numbers', to: 'parser999md#mobile_numbers', as: 'mobile_numbers_999'
  get '999md/mobile_service', to: 'parser999md#mobile_service', as: 'mobile_service_999'
  get '999md/home_phones', to: 'parser999md#home_phones', as: 'home_phones_999'
  get '999md/radio', to: 'parser999md#radio', as: 'radio_999'
  get '999md/pbx', to: 'parser999md#pbx', as: 'pbx_999'
  get '999md/fax', to: 'parser999md#fax', as: 'fax_999'
  get '999md/mobile_chargers', to: 'parser999md#mobile_chargers', as: 'mobile_chargers_999'
  get '999md/phones_miscellaneous', to: 'parser999md#phones_miscellaneous', as: 'phones_miscellaneous_999'

  # Clothes
  get '999md/woman_shoes', to: 'parser999md#woman_shoes', as: 'woman_shoes_999'
  get '999md/woman_clothes', to: 'parser999md#woman_clothes', as: 'woman_clothes_999'
end
