class Parser999mdController < ApplicationController

  require 'open-uri'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  ### TRANSPORT

  def parse_all_transport
    cars_passengers
    parts_for_cars
    supplies_and_accessories
    special_equipment_and_tools
    auto_glass_and_optics
    parts_for_trucks
    wheel_and_tires
    trailers
    airplanes
    buses_and_minibuses
    trucks
    motorcycles
    moto_equipment
    spare_parts_for_motorcycles
    electric_scooters
    agriculture
    special_equipment
    snowmobiles_and_jet_ski
    carcaraudio
    gps_navigation
    acoustic
    supplies_of_car_audio
    video_recorders
    radars_alarms
    bicycles
    bike_gear
    spare_parts_for_bicycles
    cargo
    auto_service
    rent_a_car
    passenger
    transport_miscellaneous
  end

  def cars_passengers
    parser('https://91.220.207.88/ru/list/transport/cars?page=', 'Транспорт / Легковые авто', 700)
  end

  def parts_for_cars
    parser('https://91.220.207.88/ru/list/transport/spare-parts-for-cars?page=', 'Транспорт / Запчасти и разборка легковых автомобилей', 434)
  end

  def supplies_and_accessories
    parser('https://91.220.207.88/ru/list/transport/supplies-and-accessories?page=', 'Транспорт / Расходные материалы и комплектующие', 68)
  end

  def special_equipment_and_tools
    parser('https://91.220.207.88/ru/list/transport/special-equipment-and-tools?page=', 'Транспорт / Инструменты и спецоборудование', 25)
  end

  def auto_glass_and_optics
    parser('https://91.220.207.88/ru/list/transport/auto-glass-and-optics?page=', 'Транспорт / Автостекла и автооптика', 34)
  end

  def parts_for_trucks
    parser('https://91.220.207.88/ru/list/transport/spare-parts-for-trucks?page=', 'Транспорт / Запчасти для грузовых автомобилей', 42)
  end

  def wheel_and_tires
    parser('https://91.220.207.88/ru/list/transport/wheels-and-tires?page=', 'Транспорт / Диски и шины', 214)
  end

  def trailers
    parser('https://91.220.207.88/ru/list/transport/trailers?page=', 'Транспорт / Прицепы', 19)
  end

  def airplanes
    parser('https://91.220.207.88/ru/list/transport/airplanes?page=', 'Транспорт / Воздушный транспорт', 2)
  end

  def buses_and_minibuses
    parser('https://91.220.207.88/ru/list/transport/buses-and-minibuses?page=', 'Транспорт / Автобусы и микроавтобусы', 53)
  end

  def trucks
    parser('https://91.220.207.88/ru/list/transport/trucks?page=', 'Транспорт / Грузовые автомобили', 46)
  end

  def motorcycles
    parser('https://91.220.207.88/ru/list/transport/motorcycles?page=', 'Транспорт / Мотоциклы и мототехника', 43)
  end

  def moto_equipment
    parser('https://91.220.207.88/ru/list/transport/moto-equipment?page=', 'Транспорт / Мотоэкипировка', 5)
  end

  def spare_parts_for_motorcycles
    parser('https://91.220.207.88/ru/list/transport/spare-parts-for-motorcycles?page=', 'Транспорт / Запчасти для мототехники', 5)
  end

  def electric_scooters
    parser('https://91.220.207.88/ru/list/transport/electric-scooters?page=', 'Транспорт / Гироскутеры, электросамокаты', 11)
  end

  def agriculture
    parser('https://91.220.207.88/ru/list/transport/agriculture?page=', 'Транспорт / Сельхозтехника', 103)
  end

  def special_equipment
    parser('https://91.220.207.88/ru/list/transport/special-equipment?page=', 'Транспорт / Спецтехника', 19)
  end

  def snowmobiles_and_jet_ski
    parser('https://91.220.207.88/ru/list/transport/snowmobiles-and-jet-ski?page=', 'Транспорт / Водный транспорт', 5)
  end

  def carcaraudio
    parser('https://91.220.207.88/ru/list/transport/carcaraudio?page=', 'Транспорт / Автомагнитолы и DVD', 28)
  end

  def gps_navigation
    parser('https://91.220.207.88/ru/list/transport/dvd-tv-gps-tuner?page=', 'Транспорт / GPS, навигация', 11)
  end

  def acoustic
    parser('https://91.220.207.88/ru/list/transport/acoustic?page=', 'Транспорт / Автоакустика', 9)
  end

  def supplies_of_car_audio
    parser('https://91.220.207.88/ru/list/transport/supplies-of-car-audio?page=', 'Транспорт / Комплектующие автозвука', 6)
  end

  def video_recorders
    parser('https://91.220.207.88/ru/list/transport/video-recorders?page=', 'Транспорт / Видеорегистраторы', 9)
  end

  def radars_alarms
    parser('https://91.220.207.88/ru/list/transport/radars-alarms?page=', 'Транспорт / Радары, сигнализация', 5)
  end

  def bicycles
    parser('https://91.220.207.88/ru/list/transport/bicycles?page=', 'Транспорт / Велотранспорт', 44)
  end

  def bike_gear
    parser('https://91.220.207.88/ru/list/transport/bike-gear?page=', 'Транспорт / Велоаксессуары', 6)
  end

  def spare_parts_for_bicycles
    parser('https://91.220.207.88/ru/list/transport/spare-parts-for-bicycles?page=', 'Транспорт / Велозапчасти и сервис', 6)
  end

  def cargo
    parser('https://91.220.207.88/ru/list/transport/cargo?page=', 'Транспорт / Грузоперевозки', 172)
  end

  def auto_service
    parser('https://91.220.207.88/ru/list/transport/car-2?page=', 'Транспорт / Автосервис и мотосервис', 94)
  end

  def rent_a_car
    parser('https://91.220.207.88/ru/list/transport/rent-a-car?page=', 'Транспорт / Аренда авто', 51)
  end

  def passenger
    parser('https://91.220.207.88/ru/list/transport/passenger?page=', 'Транспорт / Пассажироперевозки', 77)
  end

  def transport_miscellaneous
    parser('https://91.220.207.88/ru/list/transport/miscellaneous?page=', 'Транспорт / Разное', 10)
  end

  ## BUSINESS

  def business_parse_all
    current_business
    doing_business
    sites_and_developing
    shares_in
    tenders_auctions
    miscellaneous_business
    cash_registers_scales
    legal_services
    advertising_services
    leasing
    printing_design
    accounting_audit_services
    insurance_services_consulting
  end

  def current_business
    parser('https://91.220.207.88/ru/list/business/the-current-business?page=', 'Бизнес / Действующий бизнес', 16)
  end

  def doing_business
    parser('https://91.220.207.88/ru/list/business/doing-business?page=', 'Бизнес / Сотрудничество, инвестиции, дилеры', 6)
  end

  def sites_and_developing
    parser('https://91.220.207.88/ru/list/business/dev-support-sites?page=', 'Бизнес / Сайты и разработка', 13)
  end

  def shares_in
    parser('https://91.220.207.88/ru/list/business/shares-in?page=', 'Бизнес / Акции и доли', 2)
  end

  def tenders_auctions
    parser('https://91.220.207.88/ru/list/business/tenders-and-auctions?page=', 'Бизнес / Проведение тендеров и аукционов', 2)
  end

  def miscellaneous_business
    parser('https://91.220.207.88/ru/list/business/miscellaneous?page=', 'Бизнес / Разное', 3)
  end

  def cash_registers_scales
    parser('https://91.220.207.88/ru/list/business/cash-registers-and-scales?page=', 'Бизнес / Торговое оборудование', 10)
  end

  def legal_services
    parser('https://91.220.207.88/ru/list/business/legal-services?page=', 'Бизнес / Юридические услуги', 86)
  end

  def advertising_services
    parser('https://91.220.207.88/ru/list/business/advertising-services-and-development?page=', 'Бизнес / Рекламные услуги', 22)
  end

  def leasing
    parser('https://91.220.207.88/ru/list/business/leasing?page=', 'Бизнес / Кредитование и лизинг', 26)
  end

  def printing_design
    parser('https://91.220.207.88/ru/list/business/printing-design?page=', 'Бизнес / Полиграфия, дизайн', 14)
  end

  def accounting_audit_services
    parser('https://91.220.207.88/ru/list/business/accounting-and-audit-services?page=', 'Бизнес / Бухгалтерия и аудит', 5)
  end

  def insurance_services_consulting
    parser('https://91.220.207.88/ru/list/business/insurance-services-and-consulting?page=', 'Бизнес / Страховые услуги и консалтинг', 4)
  end

  ### REAL ESTATE

  def real_estate_all
    appartaments_and_rooms
    houses_and_garden
    lands
    commercial_real_estate
    garages_and_parking
    real_estate_miscellaneous
    real_estate_services
  end

  def appartaments_and_rooms
    parser('https://91.220.207.88/ru/list/real-estate/apartments-and-rooms?page=', 'Недвижимость / Квартиры и комнаты', 429)
  end

  def houses_and_garden
    parser('https://91.220.207.88/ru/list/real-estate/house-and-garden?page=', 'Недвижимость / Дома и дачи', 137)
  end

  def lands
    parser('https://91.220.207.88/ru/list/real-estate/land?page=', 'Недвижимость / Земельные участки', 77)
  end

  def commercial_real_estate
    parser('https://91.220.207.88//ru/list/real-estate/commercial-real-estate?page=', 'Недвижимость / Коммерческая недвижимость', 79)
  end

  def garages_and_parking
    parser('https://91.220.207.88//ru/list/real-estate/garages-and-parking?page=', 'Недвижимость / Гаражи и парковки', 15)
  end

  def real_estate_miscellaneous
    parser('https://91.220.207.88//ru/list/real-estate/miscellaneous?page=', 'Недвижимость / Разное', 3)
  end

  def real_estate_services
    parser('https://91.220.207.88//ru/list/real-estate/services?page=', 'Недвижимость / Риэлторские услуги', 3)
  end

  ### PHONES

  def parse_phones_all
    mobile_phones
    mobile_phones_parts
    mobile_numbers
    mobile_service
    home_phones
    radio
    pbx
    fax
    mobile_chargers
    phones_miscellaneous
    mobile_phones_accessories
  end

  def mobile_phones
    parser('https://91.220.207.88/ru/list/phone-and-communication/mobile-phones?page=', 'Телефоны и связь / Мобильные телефоны', 247)
  end

  def mobile_phones_accessories
    parser('https://91.220.207.88/ru/list/phone-and-communication/accessories?page=', 'Телефоны и связь / Аксессуары', 54)
  end

  def mobile_phones_parts
    parser('https://91.220.207.88/ru/list/phone-and-communication/spare-parts-for-mobile-phones?page=', 'Телефоны и связь / Запчасти для телефонов', 12)
  end

  def mobile_numbers
    parser('https://91.220.207.88/ru/list/phone-and-communication/rooms-and-tickets?page=', 'Телефоны и связь / Номера и абонементы', 3)
  end

  def mobile_service
    parser('https://91.220.207.88/ru/list/phone-and-communication/service-and-repair-of-telephones?page=', 'Телефоны и связь / Сервис и ремонт телефонов', 48)
  end

  def home_phones
    parser('https://91.220.207.88/ru/list/phone-and-communication/cordless-phones?page=', 'Телефоны и связь / Стационарные телефоны', 6)
  end

  def radio
    parser('https://91.220.207.88/ru/list/phone-and-communication/radio?page=', 'Телефоны и связь / Рации и радиостанции', 3)
  end

  def pbx
    parser('https://91.220.207.88/ru/list/phone-and-communication/office-pbx?page=', 'Телефоны и связь / Офисные АТС', 2)
  end

  def fax
    parser('https://91.220.207.88/ru/list/phone-and-communication/fax?page=', 'Телефоны и связь / Факсы', 2)
  end

  def mobile_chargers
    parser('https://91.220.207.88/ru/list/phone-and-communication/charger-and-batteries?page=', 'Телефоны и связь / Зарядки и аккумуляторы', 11)
  end

  def phones_miscellaneous
    parser('https://91.220.207.88/ru/list/phone-and-communication/miscellaneous?page=', 'Телефоны и связь / Разное', 2)
  end

  ### CLOTHES

  def parse_all_clothes
    woman_clothes
    woman_shoes
    female_underwear
    man_clothes
    man_shoes
    sport_shoes
    sport_clothes
    thermal_underwear
    wedding_clothes
    wedding_shoes
    wedding_accessories
    special_clothing
    carnival_costumes
    clothes_miscellaneous
    clothing_for_children
    childrens_shoes
    delivery_clothes
    laundry
    watches
    jewelry
    glasses
    bags_briefcases
    belts_gloves
    neckties_shawls
    hats
  end

  def woman_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/clothes-for-women?page=', 'Одежда, обувь и аксессуары / Женская одежда', 110)
  end

  def woman_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/shoes-for-women?page=', 'Одежда, обувь и аксессуары / Женская обувь', 85)
  end

  def female_underwear
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/female-underwear?page=', 'Одежда, обувь и аксессуары / Женское нижнее белье', 7)
  end

  def man_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/clothing-for-men?page=', 'Одежда, обувь и аксессуары / Мужская одежда', 37)
  end

  def man_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/shoes-for-men?page=', 'Одежда, обувь и аксессуары / Мужская обувь', 49)
  end

  def sport_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/sports-shoes?page=', 'Одежда, обувь и аксессуары / Спортивная обувь', 26)
  end

  def sport_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/sports-uniforms?page=', 'Одежда, обувь и аксессуары / Спортивная одежда', 11)
  end

  def thermal_underwear
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/thermal-underwear?page=', 'Одежда, обувь и аксессуары / Спортивное бельё, купальники', 3)
  end

  def wedding_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/wedding-clothes?page=', 'Одежда, обувь и аксессуары / Свадебная одежда', 22)
  end

  def wedding_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/wedding-shoes?page=', 'Одежда, обувь и аксессуары / Свадебная обувь', 3)
  end

  def wedding_accessories
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/wedding-accessories?page=', 'Одежда, обувь и аксессуары / Свадебные аксессуары', 3)
  end

  def special_clothing
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/special-clothing?page=', 'Одежда, обувь и аксессуары / Спецодежда и спецобувь', 9)
  end

  def carnival_costumes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/carnival-costumes?page=', 'Одежда, обувь и аксессуары / Карнавальные костюмы', 3)
  end

  def clothes_miscellaneous
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/miscellaneous?page=', 'Одежда, обувь и аксессуары / Разное', 3)
  end

  def clothing_for_children
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/clothing-for-girls?page=', 'Одежда, обувь и аксессуары / Детская одежда', 76)
  end

  def childrens_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/childrens-shoes?page=', 'Одежда, обувь и аксессуары / Детская обувь', 57)
  end

  def delivery_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/delivery-clothes?page=', 'Одежда, обувь и аксессуары / Доставка одежды и обуви', 2)
  end

  def laundry
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/laundry?page=', 'Одежда, обувь и аксессуары / Уход и пошив одежды', 3)
  end

  def watches
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/watches?page=', 'Одежда, обувь и аксессуары / Наручные часы', 65)
  end

  def jewelry
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/jewelry?page=', 'Одежда, обувь и аксессуары / Ювелирные изделия, бижутерия', 33)
  end

  def glasses
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/glasses?page=', 'Одежда, обувь и аксессуары / Очки', 6)
  end

  def bags_briefcases
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/bags-briefcases?page=', 'Одежда, обувь и аксессуары / Сумочки, портфели', 23)
  end

  def belts_gloves
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/belts-gloves?page=', 'Одежда, обувь и аксессуары / Кошельки, ремни, перчатки', 9)
  end

  def neckties_shawls
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/neckties-shawls?page=', 'Одежда, обувь и аксессуары / Галстуки, шарфы', 3)
  end

  def hats
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/hats?page=', 'Одежда, обувь и аксессуары / Головные уборы', 6)
  end

  ## COMPUTERS AND EQUIPMENT

  def parse_computers_all
    laptops
    desktops
    game_console
    tablets
    pc_accessories
    printers
    copiers_multifunction
    consumables
    office_equipment
    calculators_notepads
    scanners
    software
    computer_services
    computers_miscellaneous
    monitors
    accessories_laptops
    hdd_ssd
    pc_video_cards
    pc_audio_multimedia
    pc_memory
    pc_keyboards_mice_joysticks
    pc_networking
    pc_motherboards
    pc_processors
    cases_powersupplies_ups
    usb_flash
    cd_dvd_rom
    pc_coolers
    usb_pcmcia_firewire_infrared
    pc_controllers_adapters
    pc_cd_dvds
    radio_components
    storage_fdd_mo_zip_streamers
  end

  def laptops
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/laptops?page=', 'Компьютеры и оргтехника / Ноутбуки', 53)
  end

  def desktops
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/desktop-computers?page=', 'Компьютеры и оргтехника / Настольные компьютеры', 22)
  end

  def game_console
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/game-consoles?page=', 'Компьютеры и оргтехника / Игровые приставки', 24)
  end

  def tablets
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/tablet?page=', 'Компьютеры и оргтехника / Планшеты', 24)
  end

  def pc_accessories
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/accessories?page=', 'Компьютеры и оргтехника / Аксессуары', 6)
  end

  def printers
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/printers?page=', 'Компьютеры и оргтехника / Принтеры', 9)
  end

  def copiers_multifunction
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/copiers-multifunction?page=', 'Компьютеры и оргтехника / Копировальные аппараты, МФУ', 7)
  end

  def consumables
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/consumables?page=', 'Компьютеры и оргтехника / Расходные материалы', 7)
  end

  def office_equipment
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/office-equipment?page=', 'Компьютеры и оргтехника / Офисная техника', 4)
  end

  def calculators_notepads
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/calculators-notepads?page=', 'Компьютеры и оргтехника / Калькуляторы, записные книжки', 4)
  end

  def scanners
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/scanners?page=', 'Компьютеры и оргтехника / Сканеры', 2)
  end

  def software
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/software?page=', 'Компьютеры и оргтехника / Программное обеспечение', 2)
  end

  def computer_services
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/computer-services?page=', 'Компьютеры и оргтехника / Обслуживание компьютеров и оргтехники', 36)
  end

  def computers_miscellaneous
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/miscellaneous?page=', 'Компьютеры и оргтехника / Разное', 2)
  end

  def monitors
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/monitors?page=', 'Компьютеры и оргтехника / Мониторы', 19)
  end

  def accessories_laptops
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/accessories-for-laptops?page=', 'Компьютеры и оргтехника / Комплектующие для ноутбуков', 16)
  end

  def hdd_ssd
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/hdd?page=', 'Компьютеры и оргтехника / HDD, SSD', 13)
  end

  def pc_video_cards
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/video?page=', 'Компьютеры и оргтехника / Видеокарты', 8)
  end

  def pc_audio_multimedia
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/audio-and-multimedia?page=', 'Компьютеры и оргтехника / Аудио и мультимедиа', 12)
  end

  def pc_memory
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/memory?page=', 'Компьютеры и оргтехника / Память RAM', 12)
  end

  def pc_keyboards_mice_joysticks
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/keyboards-mice-joysticks?page=', 'Компьютеры и оргтехника / Клавиатуры, мыши, джойстики', 19)
  end

  def pc_networking
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/networking?page=', 'Компьютеры и оргтехника / Сетевое оборудование', 12)
  end

  def pc_motherboards
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/motherboard?page=', 'Компьютеры и оргтехника / Материнские платы', 8)
  end

  def pc_processors
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/processors?page=', 'Компьютеры и оргтехника / Процессоры', 8)
  end

  def cases_powersupplies_ups
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/cases-and-power-supplies-ups?page=', 'Компьютеры и оргтехника / Корпуса и блоки питания, UPS', 10)
  end

  def usb_flash
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/usb-flash?page=', 'Компьютеры и оргтехника / USB Flash', 5)
  end

  def cd_dvd_rom
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/cd-dvd-rom?page=', 'Компьютеры и оргтехника / CD/DVD ROM', 2)
  end

  def pc_coolers
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/cooler-and-cooling?page=', 'Компьютеры и оргтехника / Кулеры и охлаждение', 4)
  end

  def usb_pcmcia_firewire_infrared
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/usb-pcmcia-firewire-infrared?page=', 'Компьютеры и оргтехника / USB, PCMCIA, FireWire, InfraRed', 2)
  end

  def pc_controllers_adapters
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/controllers-and-adapters?page=', 'Компьютеры и оргтехника / Контроллеры и адаптеры', 6)
  end

  def pc_cd_dvds
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/drives-cd-dvd?page=', 'Компьютеры и оргтехника / Диски CD, DVD', 2)
  end

  def radio_components
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/radio-components?page=', 'Компьютеры и оргтехника / Радиодетали', 2)
  end

  def storage_fdd_mo_zip_streamers
    parser('https://91.220.207.88/ru/list/computers-and-office-equipment/storage-fdd-mo-zip-streamers?page=', 'Компьютеры и оргтехника / Накопители FDD, MO, ZIP, стримеры', 2)
  end

  # Construction and Repair

  def construction_parse_all
    construction_repair_all_parse
    facing_materials_finishing
    roofing_materials
    insulating_materials
    lumber
    building_materials
    construction_electrical
    construct_pumps_pump
    construction_equipment
    construct_gas_powered
    lighting_construction
    construction_pneumatics
    construct_hand_tool
    plumbing_bath_construct
    construct_pipes
    construct_sinks
    taps_construct
    construction_miscellaneous
    construction_metal
    construct_articles_of_concrete
    construct_wood
    glass_construct
    construct_heating
    construct_windows_doors
    repairs_construct
    construction_work
    plumbing_works_construct
    electrical_work_construct
    design_and_architecture_construct
    metal_work_construct
  end

  def construction_repair_all_parse
    facing_materials_finishing
  end

  def facing_materials_finishing
    parser('https://91.220.207.88/ru/list/construction-and-repair/finishing-and-facing-materials?page=', 'Строительство и ремонт / Отделочные и облицовочные материалы', 30)
  end

  def roofing_materials
    parser('https://91.220.207.88/ru/list/construction-and-repair/roofing-materials?page=', 'Строительство и ремонт / Кровельные материалы', 14)
  end

  def insulating_materials
    parser('https://91.220.207.88/ru/list/construction-and-repair/the-heat-and-sound-insulating-materials?page=', 'Строительство и ремонт / Изоляционные материалы', 9)
  end

  def lumber
    parser('https://91.220.207.88/ru/list/construction-and-repair/lumber?page=', 'Строительство и ремонт / Пиломатериалы', 6)
  end

  def building_materials
    parser('https://91.220.207.88/ru/list/construction-and-repair/building-materials?page=', 'Строительство и ремонт / Общестроительные материалы', 11)
  end

  def construction_electrical
    parser('https://91.220.207.88/ru/list/construction-and-repair/electrical?page=', 'Строительство и ремонт / Электрооборудование', 75)
  end

  def construct_pumps_pump
    parser('https://91.220.207.88/ru/list/construction-and-repair/pumps-and-pump?page=', 'Строительство и ремонт / Насосы и помпы', 11)
  end

  def construction_equipment
    parser('https://91.220.207.88/ru/list/construction-and-repair/construction-equipment?page=', 'Строительство и ремонт / Строительная техника', 27)
  end

  def construct_gas_powered
    parser('https://91.220.207.88/ru/list/construction-and-repair/gas-powered?page=', 'Строительство и ремонт / Бензоинструменты', 23)
  end

  def lighting_construction
    parser('https://91.220.207.88/ru/list/construction-and-repair/lighting?page=', 'Строительство и ремонт / Освещение и комплектующие', 24)
  end

  def construction_pneumatics
    parser('https://91.220.207.88/ru/list/construction-and-repair/pneumatics?page=', 'Строительство и ремонт / Пневматическое оборудование', 8)
  end

  def construct_hand_tool
    parser('https://91.220.207.88/ru/list/construction-and-repair/hand-tool?page=', 'Строительство и ремонт / Ручной инструмент', 11)
  end

  def plumbing_bath_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/plumbing-bath?page=', 'Строительство и ремонт / Санфаянс, сантехника', 16)
  end

  def construct_pipes
    parser('https://91.220.207.88/ru/list/construction-and-repair/pipes?page=', 'Строительство и ремонт / Водопровод и канализация', 6)
  end

  def construct_sinks
    parser('https://91.220.207.88/ru/list/construction-and-repair/sinks?page=', 'Строительство и ремонт / Кухонные мойки', 3)
  end

  def taps_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/taps?page=', 'Строительство и ремонт / Смесители', 4)
  end

  def construction_miscellaneous
    parser('https://91.220.207.88/ru/list/construction-and-repair/miscellaneous?page=', 'Строительство и ремонт / Разное', 4)
  end

  def construction_metal
    parser('https://91.220.207.88/ru/list/construction-and-repair/metal?page=', 'Строительство и ремонт / Изделия из металла', 59)
  end

  def construct_articles_of_concrete
    parser('https://91.220.207.88/ru/list/construction-and-repair/articles-of-concrete?page=', 'Строительство и ремонт / Изделия из железобетона', 5)
  end

  def construct_wood
    parser('https://91.220.207.88/ru/list/construction-and-repair/wood?page=', 'Строительство и ремонт / Конструкции из дерева', 9)
  end

  def glass_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/glass?page=', 'Строительство и ремонт / Изделия из стекла', 6)
  end

  def construct_heating
    parser('https://91.220.207.88/ru/list/construction-and-repair/heating?page=', 'Строительство и ремонт / Обогрев и отопление', 43)
  end

  def construct_windows_doors
    parser('https://91.220.207.88/ru/list/construction-and-repair/windows-doors?page=', 'Строительство и ремонт / Окна и двери', 51)
  end

  def repairs_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/repairs?page=', 'Строительство и ремонт / Ремонтные работы', 50)
  end

  def construction_work
    parser('https://91.220.207.88/ru/list/construction-and-repair/construction-work?page=', 'Строительство и ремонт / Строительно-монтажные работы', 50)
  end

  def plumbing_works_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/plumbing?page=', 'Строительство и ремонт / Сантехнические работы', 42)
  end

  def electrical_work_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/electrical-2?page=', 'Строительство и ремонт / Электроработы', 25)
  end

  def design_and_architecture_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/design-and-architecture?page=', 'Строительство и ремонт / Архитектура, проектирование, дизайн', 11)
  end

  def metal_work_construct
    parser('https://91.220.207.88/ru/list/construction-and-repair/metal-2?page=', 'Строительство и ремонт / Металлообработка', 7)
  end

   # Furniture and Interior
  def furniture_all_parse
    upholstery_furniture
    bedrooms
    tables_chairs_stools
    cabinets_cabinets_coupe
    kitchen
    antiques
    outdoor_furniture
    furniture_for_horeca
    inflatable_furniture
    custom_furniture
    pictures_watches_interior
    blinds_curtains
    home_mirrors
  end

  def upholstery_furniture
    parser('https://91.220.207.88/ru/list/furniture-and-interior/upholstery?page=', 'Мебель и интерьер / Мягкая мебель', 40)
  end

  def bedrooms
    parser('https://91.220.207.88/ru/list/furniture-and-interior/bedrooms?page=', 'Мебель и интерьер / Спальни и кровати', 44)
  end

  def tables_chairs_stools
    parser('https://91.220.207.88/ru/list/furniture-and-interior/tables-chairs-stools?page=', 'Мебель и интерьер / Столы и стулья', 49)
  end

  def cabinets_cabinets_coupe
    parser('https://91.220.207.88/ru/list/furniture-and-interior/cabinets-cabinets-coupe?page=', 'Мебель и интерьер / Шкафы и стенки', 43)
  end

  def kitchen
    parser('https://91.220.207.88/ru/list/furniture-and-interior/kitchen?page=', 'Мебель и интерьер / Кухни', 17)
  end

  def antiques
    parser('https://91.220.207.88/ru/list/furniture-and-interior/antiques?page=', 'Мебель и интерьер / Антиквариат, коллекционирование', 70)
  end

  def outdoor_furniture
    parser('https://91.220.207.88/ru/list/furniture-and-interior/outdoor-furniture?page=', 'Мебель и интерьер / Дачная мебель', 7)
  end

  def furniture_for_horeca
    parser('https://91.220.207.88/ru/list/furniture-and-interior/furniture-for-cafes-bars-and-restaurants?page=', 'Мебель и интерьер / Мебель для кафе, баров и ресторанов', 7)
  end

  def inflatable_furniture
    parser('https://91.220.207.88/ru/list/furniture-and-interior/inflatable-furniture?page=', 'Мебель и интерьер / Надувная мебель', 3)
  end

  def custom_furniture
    parser('https://91.220.207.88/ru/list/furniture-and-interior/custom-furniture?page=', 'Мебель и интерьер / Изготовление и ремонт мебели', 25)
  end

  def pictures_watches_interior
    parser('https://91.220.207.88/ru/list/furniture-and-interior/pictures?page=', 'Мебель и интерьер / Картины, часы', 10)
  end

  def blinds_curtains
    parser('https://91.220.207.88/ru/list/furniture-and-interior/blinds-and-curtains?page=', 'Мебель и интерьер / Жалюзи и шторы', 13)
  end

  def home_mirrors
    parser('https://91.220.207.88/ru/list/furniture-and-interior/mirrors?page=', 'Мебель и интерьер / Зеркала', 4)
  end

  # Audio Video Photo

  def audio_video_photo_parse_all
    tv
    video_camera
    dvd_cd_players
    satellite_dish
    tv_projectors
    digital_cameras
    lenses_cvetofiltry
    accessories_photo
    photo_flash_light
    tripods_monopods
    binoculars_telescopes_microscopes
    photo_memory_cards
    photos_bags_cases
    accums_photo
    miscellaneous_audiovideophoto
    acoustics_columns
    microphones_audiovideophoto
    portable_audio
    home_audio
    stereo_components
    home_cinema
    accessories_video
    audio_studio
    studio_lighting
    accessories_studio
    studio_video
    digitization
    audiovideophoto_repair
  end

  def tv
    parser('https://91.220.207.88/ru/list/audio-video-photo/tv?page=', 'Аудио-Видео-Фото / Телевизоры', 42)
  end

  def video_camera
    parser('https://91.220.207.88/ru/list/audio-video-photo/camera?page=', 'Аудио-Видео-Фото / Видеокамеры', 12)
  end

  def dvd_cd_players
    parser('https://91.220.207.88/ru/list/audio-video-photo/dvd-and-cd-players?page=', 'Аудио-Видео-Фото / Видеоплееры', 3)
  end

  def satellite_dish
    parser('https://91.220.207.88/ru/list/audio-video-photo/satellite-dish?page=', 'Аудио-Видео-Фото / Спутниковые антенны', 4)
  end

  def tv_projectors
    parser('https://91.220.207.88/ru/list/audio-video-photo/projectors?page=', 'Аудио-Видео-Фото / Проекторы и экраны', 4)
  end

  def digital_cameras
    parser('https://91.220.207.88/ru/list/audio-video-photo/digital-cameras?page=', 'Аудио-Видео-Фото / Фотоаппараты', 23)
  end

  def lenses_cvetofiltry
    parser('https://91.220.207.88/ru/list/audio-video-photo/lenses-cvetofiltry?page=', 'Аудио-Видео-Фото / Объективы, светофильтры', 11)
  end

  def accessories_photo
    parser('https://91.220.207.88/ru/list/audio-video-photo/accessories-photo?page=', 'Аудио-Видео-Фото / Аксессуары фото', 3)
  end

  def photo_flash_light
    parser('https://91.220.207.88/ru/list/audio-video-photo/flash-light?page=', 'Аудио-Видео-Фото / Вспышки, свет', 3)
  end

  def tripods_monopods
    parser('https://91.220.207.88/ru/list/audio-video-photo/tripods-monopods?page=', 'Аудио-Видео-Фото / Штативы, моноподы', 3)
  end

  def binoculars_telescopes_microscopes
    parser('https://91.220.207.88/ru/list/audio-video-photo/binoculars-telescopes-microscopes?page=', 'Аудио-Видео-Фото / Бинокли, телескопы, микроскопы', 4)
  end

  def photo_memory_cards
    parser('https://91.220.207.88/ru/list/audio-video-photo/memory-cards?page=', 'Аудио-Видео-Фото / Карты памяти', 7)
  end

  def photos_bags_cases
    parser('https://91.220.207.88/ru/list/audio-video-photo/bags-cases?page=', 'Аудио-Видео-Фото / Сумки и чехлы', 2)
  end

  def accums_photo
    parser('https://91.220.207.88/ru/list/audio-video-photo/b-a-c?page=', 'Аудио-Видео-Фото / Аккумуляторы и зарядные устройства', 5)
  end

  def miscellaneous_audiovideophoto
    parser('https://91.220.207.88/ru/list/audio-video-photo/miscellaneous?page=', 'Аудио-Видео-Фото / Разное', 3)
  end

  def acoustics_columns
    parser('https://91.220.207.88/ru/list/audio-video-photo/acoustics-columns?page=', 'Аудио-Видео-Фото / Акустика, колонки', 22)
  end

  def microphones_audiovideophoto
    parser('https://91.220.207.88/ru/list/audio-video-photo/microphones?page=', 'Аудио-Видео-Фото / Микрофоны, наушники', 24)
  end

  def portable_audio
    parser('https://91.220.207.88/ru/list/audio-video-photo/portable-audio?page=', 'Аудио-Видео-Фото / Портативное аудио', 12)
  end

  def home_audio
    parser('https://91.220.207.88/ru/list/audio-video-photo/home-audio?page=', 'Аудио-Видео-Фото / Домашнее аудио', 7)
  end

  def stereo_components
    parser('https://91.220.207.88/ru/list/audio-video-photo/stereo-components?page=', 'Аудио-Видео-Фото / Стереокомпоненты', 9)
  end

  def home_cinema
    parser('https://91.220.207.88/ru/list/audio-video-photo/home-cinema?page=', 'Аудио-Видео-Фото / Домашние кинотеатры', 2)
  end

  def accessories_video
    parser('https://91.220.207.88/ru/list/audio-video-photo/accessories-video?page=', 'Аудио-Видео-Фото / Аксессуары аудио, видео', 10)
  end

  def audio_studio
    parser('https://91.220.207.88/ru/list/audio-video-photo/audio-studio?page=', 'Аудио-Видео-Фото / Студийное аудио', 2)
  end

  def studio_lighting
    parser('https://91.220.207.88/ru/list/audio-video-photo/studio-lighting?page=', 'Аудио-Видео-Фото / Студийный свет', 2)
  end

  def accessories_studio
    parser('https://91.220.207.88/ru/list/audio-video-photo/accessories-studio?page=', 'Аудио-Видео-Фото / Аксессуары студия', 2)
  end

  def studio_video
    parser('https://91.220.207.88/ru/list/audio-video-photo/studio-video?page=', 'Аудио-Видео-Фото / Студийное видео', 2)
  end

  def digitization
    parser('https://91.220.207.88/ru/list/audio-video-photo/digitization?page=', 'Аудио-Видео-Фото / Оцифровка, обработка', 2)
  end

  def audiovideophoto_repair
    parser('https://91.220.207.88/ru/list/audio-video-photo/repair?page=', 'Аудио-Видео-Фото / Ремонт и установка аудио-видео-фото', 12)
  end

  # All Else

  def all_else_parse_all
    all_else_professional_equipment
    industry_raw_materials
    security_safety
    lombard
    handmade
    food_drinks_tobacco
    reports_dissertations
    sex_shops
    books_periodicals
    translation
    lost_found
    sewing
    all_else_miscellaneous
  end

  def all_else_professional_equipment
    parser('https://91.220.207.88/ru/list/all-else/professional-equipment?page=', 'Все остальное / Профессиональное оборудование', 58)
  end

  def industry_raw_materials
    parser('https://91.220.207.88/ru/list/all-else/industry-and-raw-materials?page=', 'Все остальное / Промышленность и сырьё', 15)
  end

  def security_safety
    parser('https://91.220.207.88/ru/list/all-else/security-and-safety?page=', 'Все остальное / Охрана и безопасность', 26)
  end

  def lombard
    parser('https://91.220.207.88/ru/list/all-else/lombard?page=', 'Все остальное / Ломбард', 17)
  end

  def handmade
    parser('https://91.220.207.88/ru/list/all-else/handmade?page=', 'Все остальное / Handmade', 9)
  end

  def food_drinks_tobacco
    parser('https://91.220.207.88/ru/list/all-else/food-drinks-and-tobacco?page=', 'Все остальное / Продукты', 8)
  end

  def reports_dissertations
    parser('https://91.220.207.88/ru/list/all-else/reports-and-dissertations?page=', 'Все остальное / Рефераты и дипломные работы', 8)
  end

  def sex_shops
    parser('https://91.220.207.88/ru/list/all-else/sex-shops?page=', 'Все остальное / Интимные товары', 12)
  end

  def books_periodicals
    parser('https://91.220.207.88/ru/list/all-else/books-and-periodicals?page=', 'Все остальное / Книги и периодика', 10)
  end

  def translation
    parser('https://91.220.207.88/ru/list/all-else/translation?page=', 'Все остальное / Бюро переводов', 2)
  end

  def lost_found
    parser('https://91.220.207.88/ru/list/all-else/lost-and-found?page=', 'Все остальное / Бюро находок', 2)
  end

  def sewing
    parser('https://91.220.207.88/ru/list/all-else/sewing?page=', 'Все остальное / Всё для шитья', 4)
  end

  def all_else_miscellaneous
    parser('https://91.220.207.88/ru/list/all-else/miscellaneous?page=', 'Все остальное / Разное', 6)
  end

  # All For Celebrations

  def allforcelebrations_parse_all
    little_touches
    fans_of_smoking
    fireworks_sky_lanterns
    elite_alcohol
    flowers
    photo_video_services
    musicians
    maintenance_celebrations
    transport_for_celebrations
    cookery
    allForCelebrations_miscellaneous
  end

  def little_touches
    parser('https://91.220.207.88/ru/list/all-for-celebrations/little-touches?page=', 'Все для торжеств / Подарки и сувениры', 21)
  end

  def fans_of_smoking
    parser('https://91.220.207.88/ru/list/all-for-celebrations/gifts-for-fans-of-smoking?page=', 'Все для торжеств / Любителям курения', 28)
  end

  def fireworks_sky_lanterns
    parser('https://91.220.207.88/ru/list/all-for-celebrations/fireworks-sky-lanterns?page=', 'Все для торжеств / Фейерверки, небесные фонарики', 6)
  end

  def elite_alcohol
    parser('https://91.220.207.88/ru/list/all-for-celebrations/elite-alcohol?page=', 'Все для торжеств / Алкоголь и напитки', 5)
  end

  def flowers
    parser('https://91.220.207.88/ru/list/all-for-celebrations/flowers?page=', 'Все для торжеств / Цветы, букеты', 15)
  end

  def photo_video_services
    parser('https://91.220.207.88/ru/list/all-for-celebrationsphoto-video-services?page=', 'Все для торжеств / Фото-видео услуги', 18)
  end

  def musicians
    parser('https://91.220.207.88/ru/list/all-for-celebrations/musicians?page=', 'Все для торжеств / Артисты, музыканты и шоу-программы', 21)
  end

  def maintenance_celebrations
    parser('https://91.220.207.88/ru/list/all-for-celebrations/maintenance-of-celebrations?page=', 'Все для торжеств / Банкетные залы, обслуживание', 13)
  end

  def transport_for_celebrations
    parser('https://91.220.207.88/ru/list/all-for-celebrations/transport-for-celebrations?page=', 'Все для торжеств / Транспорт для торжеств', 17)
  end

  def cookery
    parser('https://91.220.207.88/ru/list/all-for-celebrations/cookery?page=', 'Все для торжеств / Кулинария', 3)
  end

  def allForCelebrations_miscellaneous
    parser('https://91.220.207.88/ru/list/all-for-celebrations/miscellaneous?page=', 'Все для торжеств / Разное', 3)
  end

  # Household Appliances

  def household_appliances_parse_all
    washingMachines
    refrigerators
    stove_oven
    microwaves
    dishwashers
    hoods
    kitchen_appliances
    tehnika_dlya_doma
    personal_care
    air_conditioners
    boilersBoilers
    air_cleaners_humidifiers
    appliance_repair
    household_miscellaneous
  end

  def washingMachines
    parser('https://91.220.207.88/ru/list/household-appliances/washing-machines?page=', 'Бытовая техника / Стиральные машины', 37)
  end

  def refrigerators
    parser('https://91.220.207.88/ru/list/household-appliances/refrigerators?page=', 'Бытовая техника / Холодильники', 27)
  end

  def stove_oven
    parser('https://91.220.207.88/ru/list/household-appliances/stove-oven?page=', 'Бытовая техника / Газовые и электроплиты', 27)
  end

  def microwaves
    parser('https://91.220.207.88/ru/list/household-appliances/microwaves?page=', 'Бытовая техника / Микроволновые печи', 7)
  end

  def dishwashers
    parser('https://91.220.207.88/ru/list/household-appliances/dishwashers?page=', 'Бытовая техника / Посудомоечные машины', 8)
  end

  def hoods
    parser('https://91.220.207.88/ru/list/household-appliances/hoods?page=', 'Бытовая техника / Вытяжки', 6)
  end

  def kitchen_appliances
    parser('https://91.220.207.88/ru/list/household-appliances/kitchen-appliances?page=', 'Бытовая техника / Техника для кухни', 46)
  end

  def tehnika_dlya_doma
    parser('https://91.220.207.88/ru/list/household-appliances/for-home?page=', 'Бытовая техника / Техника для дома', 33)
  end

  def personal_care
    parser('https://91.220.207.88/ru/list/household-appliances/personal-care?page=', 'Бытовая техника / Индивидуальный уход', 22)
  end

  def air_conditioners
    parser('https://91.220.207.88/ru/list/household-appliances/air-conditioners?page=', 'Бытовая техника / Кондиционеры, вентиляция', 21)
  end

  def boilersBoilers
    parser('https://91.220.207.88/ru/list/household-appliances/boilers-boilers?page=', 'Бытовая техника / Водонагреватели, колонки', 13)
  end

  def air_cleaners_humidifiers
    parser('https://91.220.207.88/ru/list/household-appliances/air-cleaners-and-humidifiers?page=', 'Бытовая техника / Ионизаторы, климатизаторы', 4)
  end

  def appliance_repair
    parser('https://91.220.207.88/ru/list/household-appliances/appliance-repair?page=', 'Бытовая техника / Ремонт и установка бытовой техники', 66)
  end

  def household_miscellaneous
    parser('https://91.220.207.88/ru/list/household-appliances/miscellaneous?page=', 'Бытовая техника / Разное', 37)
  end

  # Sports Health Beauty

  def sports_health_beauty_all
    trainers_equipment
    nutrition
    sports_clubs
    pools
    scooters_skates_skis
    medical_facilities
    drugs_medicines
    essential_oils_teas_herbs
    nails_manicure_pedicure
    beauty_makeup
    hair_care
    traditional_medicine
    perfumes_cosmetics
    care_beautry
    sport_health_beauty_miscellaneous
  end

  def trainers_equipment
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/trainers-and-equipment?page=', 'Спорт, здоровье, красота / Спортивный инвентарь', 37)
  end

  def nutrition
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/nutrition?page=', 'Спорт, здоровье, красота / Спортивное питание', 6)
  end

  def sports_clubs
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/sports-clubs?page=', 'Спорт, здоровье, красота / Спортивные клубы и бассейны', 7)
  end

  def pools
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/pools?page=', 'Спорт, здоровье, красота / Бассейны', 3)
  end

  def scooters_skates_skis
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/scooters-skates-skis?page=', 'Спорт, здоровье, красота / Самокаты, ролики, лыжи', 11)
  end

  def medical_facilities
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/medical-facilities?page=', 'Спорт, здоровье, красота / Медицинское оборудование', 25)
  end

  def drugs_medicines
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/drugs-and-medicines?page=', 'Спорт, здоровье, красота / Лекарства, добавки, витамины', 21)
  end

  def essential_oils_teas_herbs
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/essential-oils-teas-herbs?page=', 'Спорт, здоровье, красота / Лечебные масла, чаи, травы', 7)
  end

  def nails_manicure_pedicure
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/nails-manicure-pedicure?page=', 'Спорт, здоровье, красота / Маникюр, педикюр', 9)
  end

  def beauty_makeup
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/beauty-and-makeup?page=', 'Спорт, здоровье, красота / Косметология, макияж, тату', 13)
  end

  def hair_care
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/hair-care?page=', 'Спорт, здоровье, красота / Парикмахерские услуги', 5)
  end

  def traditional_medicine
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/traditional-medicine?page=', 'Спорт, здоровье, красота / Медицинские услуги', 4)
  end

  def perfumes_cosmetics
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/perfumes-cosmetics?page=', 'Спорт, здоровье, красота / Парфюмерия', 8)
  end

  def care_beautry
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/care?page=', 'Спорт, здоровье, красота / Косметика и уход', 22)
  end

  def sport_health_beauty_miscellaneous
    parser('https://91.220.207.88/ru/list/sports-health-and-beauty/miscellaneous?page=', 'Спорт, здоровье, красота / Разное', 3)
  end

  # Tourism Leisure
  def tourism_leisure_parse_all
    holidays_abroad
    tourism_moldova
    tents
    leisure_products
    flashlights
    backpacks_bags
    sauna
    massage
    entertainment_recreation
    guns_knives
    fishing_rods_tackles
    tourism_miscellaneous
  end

  def holidays_abroad
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/holidays-abroad?page=', 'Туризм, отдых и развлечения / Туризм за рубежом', 32)
  end

  def tourism_moldova
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/rest-in-moldova?page=', 'Туризм, отдых и развлечения / Внутренний туризм', 4)
  end

  def tents
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/tents?page=', 'Туризм, отдых и развлечения / Палатки', 4)
  end

  def leisure_products
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/leisure-products?page=', 'Туризм, отдых и развлечения / Товары для отдыха', 14)
  end

  def flashlights
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/flashlights?page=', 'Туризм, отдых и развлечения / Фонарики, фонари', 2)
  end

  def backpacks_bags
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/backpacks-and-bags?page=', 'Туризм, отдых и развлечения / Рюкзаки, сумки и чемоданы', 9)
  end

  def sauna
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/sauna?page=', 'Туризм, отдых и развлечения / Сауны и бани', 5)
  end

  def massage
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/massage?page=', 'Туризм, отдых и развлечения / Массажные салоны', 12)
  end

  def entertainment_recreation
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/entertainment-and-recreation?page=', 'Туризм, отдых и развлечения / Развлечения и отдых', 4)
  end

  def guns_knives
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/guns-and-knives?page=', 'Туризм, отдых и развлечения / Оружие и ножи', 15)
  end

  def fishing_rods_tackles
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/fishing-rods-and-tackles?page=', 'Туризм, отдых и развлечения / Удочки и снасти', 7)
  end

  def tourism_miscellaneous
    parser('https://91.220.207.88/ru/list/tourism-leisure-and-entertainment/miscellaneous?page=', 'Туризм, отдых и развлечения / Разное', 2)
  end

  # All for home and office

  def all_for_home_office_parse_all
    cookware_dishes
    fabrics_linen
    household_supplies
    household_chemistry
    accessories_toilet
    stationary
    safes_fireproof_cabinets
    presentation_equipment
    miscellaneous_allforhomeoffice
    cleaning_services
  end

  def cookware_dishes
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/cookware-dishes?page=', 'Все для дома и офиса / Кухонные принадлежности, посуда', 16)
  end

  def fabrics_linen
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/fabrics-and-linen?page=', 'Все для дома и офиса / Домашний текстиль и ковры', 19)
  end

  def household_supplies
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/household-supplies?page=', 'Все для дома и офиса / Хозяйственный инвентарь', 16)
  end

  def household_chemistry
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/household-chemistry?page=', 'Все для дома и офиса / Бытовая химия', 5)
  end

  def accessories_toilet
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/accessories-for-the-bath-and-toilet?page=', 'Все для дома и офиса / Аксессуары для ванны и туалета', 4)
  end

  def stationary
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/stationary?page=', 'Все для дома и офиса / Канцелярские товары', 7)
  end

  def safes_fireproof_cabinets
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/safes-fireproof-cabinets?page=', 'Все для дома и офиса / Сейфы, несгораемые шкафы', 5)
  end

  def presentation_equipment
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/presentation-equipment?page=', 'Все для дома и офиса / Презентационный инвентарь', 2)
  end

  def miscellaneous_allforhomeoffice
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/miscellaneous?page=', 'Все для дома и офиса / Разное', 4)
  end

  def cleaning_services
    parser('https://91.220.207.88/ru/list/all-for-home-and-office/cleaning-services?page=', 'Все для дома и офиса / Клининговые услуги', 16)
  end

  # Children World

  def children_world_parse_all
    stroller
    toys
    furniture_children
    walkers_slings_cots
    care_hygiene_children
    car_chair_children
    power_accessories_food_children
    children_miscellaneous
    education_child_care
  end

  def stroller
    parser('https://91.220.207.88/ru/list/children-world/stroller?page=', 'Детский мир / Коляски', 34)
  end

  def toys
    parser('https://91.220.207.88/ru/list/children-world/toys?page=', 'Детский мир / Игрушки и развлечения', 33)
  end

  def furniture_children
    parser('https://91.220.207.88/ru/list/children-world/furniture-for-children?page=', 'Детский мир / Мебель для детей', 34)
  end

  def walkers_slings_cots
    parser('https://91.220.207.88/ru/list/children-world/walkers-slings-and-cots?page=', 'Детский мир / Ходунки, слинги и манежи', 12)
  end

  def care_hygiene_children
    parser('https://91.220.207.88/ru/list/children-world/care-and-hygiene?page=', 'Детский мир / Предметы ухода и гигиены', 9)
  end

  def car_chair_children
    parser('https://91.220.207.88/ru/list/children-world/car?page=', 'Детский мир / Детские автокресла', 34)
  end

  def power_accessories_food_children
    parser('https://91.220.207.88/ru/list/children-world/power-and-accessories-for-food?page=', 'Детский мир / Питание и аксессуары для питания', 11)
  end

  def children_miscellaneous
    parser('https://91.220.207.88/ru/list/children-world/miscellaneous?page=', 'Детский мир / Разное', 3)
  end

  def education_child_care
    parser('https://91.220.207.88/ru/list/children-world/education-and-child-care?page=', 'Детский мир / Образование и няни', 4)
  end

  # Agriculture

  def agriculture_parse_all
    livestock
    aviculture
    beekeeping_honey
    animal_feed
    pisciculture
    fertilizers_chemicals
    seeds_seedlings
    farm_equipment
    wood_coal_fuel
    agro_tools
    agro_other
    berries_mushrooms
    dried_fruits
    vegetables_fruits
    dairy_products
    grain_cereals_flours
    agro_oil
    nuts
    eggs
    meat_bird_fish
    agro_services
  end

  def livestock
    parser('https://91.220.207.88/ru/list/agriculture/livestock?page=', 'Сельское хозяйство / Животноводство', 28)
  end

  def aviculture
    parser('https://91.220.207.88/ru/list/agriculture/aviculture?page=', 'Сельское хозяйство / Птицеводство', 5)
  end

  def beekeeping_honey
    parser('https://91.220.207.88/ru/list/agriculture/beekeeping-and-honey?page=', 'Сельское хозяйство / Пчеловодство и мед', 9)
  end

  def animal_feed
    parser('https://91.220.207.88/ru/list/agriculture/animal-feed?page=', 'Сельское хозяйство / Корма для животных', 6)
  end

  def pisciculture
    parser('https://91.220.207.88/ru/list/agriculture/pisciculture?page=', 'Сельское хозяйство / Рыбоводство', 3)
  end

  def fertilizers_chemicals
    parser('https://91.220.207.88/ru/list/agriculture/fertilizers-and-chemicals?page=', 'Сельское хозяйство / Удобрения и химикаты', 3)
  end

  def seeds_seedlings
    parser('https://91.220.207.88/ru/list/agriculture/seeds-and-seedlings?page=', 'Сельское хозяйство / Семена, рассада, саженцы', 17)
  end

  def farm_equipment
    parser('https://91.220.207.88/ru/list/agriculture/farm-equipment?page=', 'Сельское хозяйство / Оборудование', 63)
  end

  def wood_coal_fuel
    parser('https://91.220.207.88/ru/list/agriculture/wood-coal-fuel?page=', 'Сельское хозяйство / Дрова, уголь, горючее', 11)
  end

  def agro_tools
    parser('https://91.220.207.88/ru/list/agriculture/tools?page=', 'Сельское хозяйство / Инструменты', 8)
  end

  def agro_other
    parser('https://91.220.207.88/ru/list/agriculture/other?page=', 'Сельское хозяйство / Разное', 2)
  end

  def berries_mushrooms
    parser('https://91.220.207.88/ru/list/agriculture/berries-mushrooms?page=', 'Сельское хозяйство / Ягоды и грибы', 3)
  end
  def dried_fruits
    parser('https://91.220.207.88/ru/list/agriculture/dried-fruits?page=', 'Сельское хозяйство / Сухофрукты', 3)
  end
  def vegetables_fruits
    parser('https://91.220.207.88/ru/list/agriculture/vegetables-and-fruits?page=', 'Сельское хозяйство / Овощи и Фрукты', 23)
  end
  def dairy_products
    parser('https://91.220.207.88/ru/list/agriculture/dairy-products?page=', 'Сельское хозяйство / Молочная продукция', 2)
  end
  def grain_cereals_flours
    parser('https://91.220.207.88/ru/list/agriculture/grain-cereals-flours?page=', 'Сельское хозяйство / Зерно, крупы, мука', 6)
  end
  def agro_oil
    parser('https://91.220.207.88/ru/list/agriculture/oil?page=', 'Сельское хозяйство / Масло', 2)
  end
  def nuts
    parser('https://91.220.207.88/ru/list/agriculture/nuts?page=', 'Сельское хозяйство / Орехи, подсолнух', 4)
  end
  def eggs
    parser('https://91.220.207.88/ru/list/agriculture/eggs?page=', 'Сельское хозяйство / Яйца', 2)
  end
  def meat_bird_fish
    parser('https://91.220.207.88/ru/list/agriculture/meat-bird-fish ?page=', 'Сельское хозяйство / Мясо, птица, рыба', 3)
  end
  def agro_services
    parser('https://91.220.207.88/ru/list/agriculture/services?page=', 'Сельское хозяйство / Сельхоз Услуги', 11)
  end

  # Animals and Plants
  def animals_plants_parse_all
    dogs
    cats
    the_birds
    fish
    other_animals
    accessories_for_animals
    animals_missing
    tying_animals
    care_animals
    plants_flowers
    inventory_plants
    miscellaneous_animals_plants
  end

  def dogs
    parser('https://91.220.207.88/ru/list/animals-and-plants/dogs?page=', 'Питомцы и растения / Собаки', 22)
  end

  def cats
    parser('https://91.220.207.88/ru/list/animals-and-plants/cats?page=', 'Питомцы и растения / Кошки', 11)
  end

  def the_birds
    parser('https://91.220.207.88/ru/list/animals-and-plants/the-birds?page=', 'Питомцы и растения / Птицы', 8)
  end

  def fish
    parser('https://91.220.207.88/ru/list/animals-and-plants/fish?page=', 'Питомцы и растения / Аквариумистика', 5)
  end

  def other_animals
    parser('https://91.220.207.88/ru/list/animals-and-plants/other-animals?page=', 'Питомцы и растения / Другие животные', 3)
  end


  def accessories_for_animals
    parser('https://91.220.207.88/ru/list/animals-and-plants/accessories-for-animals?page=', 'Питомцы и растения / Зоотовары', 10)
  end


  def animals_missing
    parser('https://91.220.207.88/ru/list/animals-and-plants/missing?page=', 'Питомцы и растения / Поиск питомцев', 2)
  end

  def tying_animals
    parser('https://91.220.207.88/ru/list/animals-and-plants/tying?page=', 'Питомцы и растения / Вязка', 7)
  end

  def care_animals
    parser('https://91.220.207.88/ru/list/animals-and-plants/care?page=', 'Питомцы и растения / Услуги питомцам', 7)
  end

  def plants_flowers
    parser('https://91.220.207.88/ru/list/animals-and-plants/plants-and-flowers?page=', 'Питомцы и растения / Растения', 9)
  end

  def inventory_plants
    parser('https://91.220.207.88/ru/list/animals-and-plants/inventory?page=', 'Питомцы и растения / Товары для растений', 4)
  end

  def miscellaneous_animals_plants
    parser('https://91.220.207.88/ru/list/animals-and-plants/miscellaneous?page=', 'Питомцы и растения / ', 2)
  end


  # Musical Instruments
  def music_instruments_parse_all
    guitars
    guitar_effects
    keyboard_instruments
    accordions
    strings
    winds
    percussion
    speakers_acoustics
    audio_mixers
    amplifiers
    stage_equipment
    dj_equipment
    accessories_components
    racks_frames_chairs
    cases_music
    repair_music
    learning_music
    recording_mixing
    rent_music
    miscellaneous_music
  end

  def guitars
    parser('https://91.220.207.88/ru/list/musical-instruments/guitars?page=', 'Музыкальные инструменты / Гитары', 8)
  end

  def guitar_effects
    parser('https://91.220.207.88/ru/list/musical-instruments/effects?page=', 'Музыкальные инструменты / Гитарные аксессуары', 4)
  end

  def keyboard_instruments
    parser('https://91.220.207.88/ru/list/musical-instruments/keyboard-instruments?page=', 'Музыкальные инструменты / Клавишные', 8)
  end

  def accordions
    parser('https://91.220.207.88/ru/list/musical-instruments/accordions?page=', 'Музыкальные инструменты / Аккордеоны и баяны', 4)
  end

  def strings
    parser('https://91.220.207.88/ru/list/musical-instruments/strings?page=', 'Музыкальные инструменты / Струнные', 2)
  end

  def winds
    parser('https://91.220.207.88/ru/list/musical-instruments/winds?page=', 'Музыкальные инструменты / Духовые', 3)
  end

  def percussion
    parser('https://91.220.207.88/ru/list/musical-instruments/percussion?page=', 'Музыкальные инструменты / Ударные', 2)
  end

  def speakers_acoustics
    parser('https://91.220.207.88/ru/list/musical-instruments/speakers-and-acoustics?page=', 'Музыкальные инструменты / Колонки и акустика', 8)
  end

  def audio_mixers
    parser('https://91.220.207.88/ru/list/musical-instruments/audio-mixers?page=', 'Музыкальные инструменты / Микшеры', 3)
  end

  def amplifiers
    parser('https://91.220.207.88/ru/list/musical-instruments/amplifiers?page=', 'Музыкальные инструменты / Усилители', 3)
  end

  def stage_equipment
    parser('https://91.220.207.88/ru/list/musical-instruments/stage-equipment?page=', 'Музыкальные инструменты / Сценическое оборудование', 3)
  end

  def dj_equipment
    parser('https://91.220.207.88/ru/list/musical-instruments/dj-equipment?page=', 'Музыкальные инструменты / DJ оборудование', 2)
  end

  def accessories_components
    parser('https://91.220.207.88/ru/list/musical-instruments/accessories-and-components?page=', 'Музыкальные инструменты / Аксессуары и комплектующие', 2)
  end

  def racks_frames_chairs
    parser('https://91.220.207.88/ru/list/musical-instruments/racks-frames-chairs?page=', 'Музыкальные инструменты / Стойки, рамы и стулья', 2)
  end

  def cases_music
    parser('https://91.220.207.88/ru/list/musical-instruments/cases?page=', 'Музыкальные инструменты / Кейсы и чехлы', 2)
  end

  def repair_music
    parser('https://91.220.207.88/ru/list/musical-instruments/repair?page=', 'Музыкальные инструменты / Ремонт и настройка музыкальных инструментов', 2)
  end

  def learning_music
    parser('https://91.220.207.88/ru/list/musical-instruments/learning?page=', 'Музыкальные инструменты / Обучение', 2)
  end

  def recording_mixing
    parser('https://91.220.207.88/ru/list/musical-instruments/recording-and-mixing?page=', 'Музыкальные инструменты / Запись и сведение', 2)
  end

  def rent_music
    parser('https://91.220.207.88/ru/list/musical-instruments/rent?page=', 'Музыкальные инструменты / Прокат', 2)
  end

  def miscellaneous_music
    parser('https://91.220.207.88/ru/list/musical-instruments/miscellaneous?page=', 'Музыкальные инструменты / Разное', 2)
  end


  private
  def parser(page, category, end_page)

    @start_page = 1
    @end_page = end_page

    @site = '999.md'
    @country = 'Молдова'

    begin
      @ads = Nokogiri::HTML(open(page + @start_page.to_s).read)
      @ads.xpath('//div[@class="ads-list-photo-item-title "]/a').each do |ad|
        @ad = ad['href']
        Timeout.timeout(10) do
          @phone_page = Nokogiri::HTML(open('https://91.220.207.88' + @ad).read)
        end
        @phone_page.xpath('//dl[@class="adPage__content__phone grid_18"]/dd/ul/li/a').each do |number|
          @number = number.to_s[/\b(3736[0-9]{7}|3737[0-8][0-9]{6}|37379[0-8][0-9]{5}|373799[0-8][0-9]{4}|3737999[0-8][0-9]{3}|37379999[0-8][0-9]{2}|373799999[0-8][0-9]|3737999999[0-9])\b/]
          @number_exist = Number.where(phone: @number).exists?
          if @number_exist == false
            @region = @phone_page.xpath('//dl[@class="adPage__content__region grid_18"]/dd[2]').to_s
            @region = @region.gsub(' мун.', '')
            @region = string_between_markers(@region, 'ss"> , ', ' <meta i')
            @store_number = Number.new
            @store_number.update(phone: @number, category: category, region: @region, country: @country, site: @site) unless @number.nil?
          end

        end
      end
      @start_page += 1
      puts "Раздел #{category}:"
      puts "Парсинг страницы #{@start_page} завершен"
      puts "Осталось #{end_page - @start_page} из общего кол-ва #{end_page}"
    rescue Timeout::Error
      puts 'Timeout error'
    rescue OpenURI::HTTPError
      puts 'HTTP error'
    end until @start_page > @end_page

  end

  def string_between_markers(string, marker1, marker2)
    string[/#{Regexp.escape(marker1)}(.*?)#{Regexp.escape(marker2)}/m, 1]
  end

end
