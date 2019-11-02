class ApplicationController < ActionController::Base

  def index
    render 'layouts/index'
  end

  def create_task
    @clients = Client.all
    @categories = Number.distinct.pluck(:category)
    @regions = Number.distinct.pluck(:region)
    @countries = Number.distinct.pluck(:country)
    render 'create_task/index'
  end

  def database
    @numbers = Number.all
    render 'database/index'
  end

  def send_sms
    @sim_cards = SimCard.all
    @clients = Client.all
    @all_tasks = Task.all
    @tasks = Task.where(status: 2).distinct.pluck(:task_id)
    render 'send_sms/index'
  end

  def parsing
    @regions = Number.distinct.pluck(:region)
    @numbers_999 = Number.where(site: '999.md').count

    # Transport
    @passengers_cars_999 = Number.where(site: '999.md', category: 'Транспорт / Легковые авто').count
    @parts_for_cars_999 = Number.where(site: '999.md', category: 'Транспорт / Запчасти и разборка легковых автомобилей').count
    @parts_for_trucks_999 = Number.where(site: '999.md', category: 'Транспорт / Запчасти для грузовых автомобилей').count
    @supplies_and_accessories_999 = Number.where(site: '999.md', category: 'Транспорт / Расходные материалы и комплектующие').count
    @special_equipment_and_tools_999 = Number.where(site: '999.md', category: 'Транспорт / Инструменты и спецоборудование').count
    @auto_glass_and_optics_999 = Number.where(site: '999.md', category: 'Транспорт / Автостекла и автооптика').count
    @wheel_and_tires_999 = Number.where(site: '999.md', category: 'Транспорт / Диски и шины').count
    @airplanes_999 = Number.where(site: '999.md', category: 'Транспорт / Воздушный транспорт').count
    @trailers_999 = Number.where(site: '999.md', category: 'Транспорт / Прицепы').count
    @agriculture_999 = Number.where(site: '999.md', category: 'Транспорт / Сельхозтехника').count
    @special_equipment_999 = Number.where(site: '999.md', category: 'Транспорт / Спецтехника').count
    @snowmobiles_and_jet_ski_999 = Number.where(site: '999.md', category: 'Транспорт / Водный транспорт').count
    @buses_and_minibuses_999 = Number.where(site: '999.md', category: 'Транспорт / Автобусы и микроавтобусы').count
    @trucks_999 = Number.where(site: '999.md', category: 'Транспорт / Грузовые автомобили').count
    @motorcycles_999 = Number.where(site: '999.md', category: 'Транспорт / Мотоциклы и мототехника').count
    @spare_parts_for_motorcycles_999 = Number.where(site: '999.md', category: 'Транспорт / Запчасти для мототехники').count
    @moto_equipment_999 = Number.where(site: '999.md', category: 'Транспорт / Мотоэкипировка').count
    @electric_scooters_999 = Number.where(site: '999.md', category: 'Транспорт / Гироскутеры, электросамокаты').count
    @carcaraudio_999 = Number.where(site: '999.md', category: 'Транспорт / Автомагнитолы и DVD').count
    @gps_navigation_999 = Number.where(site: '999.md', category: 'Транспорт / GPS, навигация').count
    @acoustic_999 = Number.where(site: '999.md', category: 'Транспорт / Автоакустика').count
    @supplies_of_car_audio_999 = Number.where(site: '999.md', category: 'Транспорт / Комплектующие автозвука').count
    @bicycles_999 = Number.where(site: '999.md', category: 'Транспорт / Велотранспорт').count
    @bike_gear_999 = Number.where(site: '999.md', category: 'Транспорт / Велоаксессуары').count
    @spare_parts_for_bicycles_999 = Number.where(site: '999.md', category: 'Транспорт / Велозапчасти и сервис').count
    @video_recorders_999 = Number.where(site: '999.md', category: 'Транспорт / Видеорегистраторы').count
    @radars_alarms_999 = Number.where(site: '999.md', category: 'Транспорт / Радары, сигнализация').count
    @cargo_999 = Number.where(site: '999.md', category: 'Транспорт / Грузоперевозки').count
    @auto_service_999 = Number.where(site: '999.md', category: 'Транспорт / Автосервис и мотосервис').count
    @rent_a_car_999 = Number.where(site: '999.md', category: 'Транспорт / Аренда авто').count
    @passenger_999 = Number.where(site: '999.md', category: 'Транспорт / Пассажироперевозки').count
    @transport_miscellaneous_999 = Number.where(site: '999.md', category: 'Транспорт / Разное').count

    # Computers and Equipment
    @laptops_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Ноутбуки').count
    @desktops_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Настольные компьютеры').count
    @game_console_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Игровые приставки').count
    @tablets_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Планшеты').count
    @pc_accessories_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Аксессуары').count
    @printers_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Принтеры').count
    @copiers_multifunction_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Копировальные аппараты, МФУ').count
    @consumables_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Расходные материалы').count
    @office_equipment_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Офисная техника').count
    @calculators_notepads_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Калькуляторы, записные книжки').count
    @scanners_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Сканеры').count
    @software_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Программное обеспечение').count
    @computer_services_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Обслуживание компьютеров и оргтехники').count
    @computers_miscellaneous_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Разное').count
    @monitors_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Мониторы').count
    @accessories_laptops_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Комплектующие для ноутбуков').count
    @hdd_ssd_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / HDD, SSD').count
    @pc_video_cards_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Видеокарты').count
    @pc_audio_multimedia_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Аудио и мультимедиа').count
    @pc_memory_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Память RAM').count
    @pc_keyboards_mice_joysticks_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Клавиатуры, мыши, джойстики').count
    @pc_networking_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Сетевое оборудование').count
    @pc_motherboards_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Материнские платы').count
    @pc_processors_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Процессоры').count
    @cases_powersupplies_ups_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Корпуса и блоки питания, UPS').count
    @usb_flash_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / USB Flash').count
    @cd_dvd_rom_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / CD/DVD ROM').count
    @pc_coolers_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Кулеры и охлаждение').count
    @usb_pcmcia_firewire_infrared_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / USB, PCMCIA, FireWire, InfraRed').count
    @pc_controllers_adapters_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Контроллеры и адаптеры').count
    @pc_cd_dvds_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Диски CD, DVD').count
    @radio_components_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Радиодетали').count
    @storage_fdd_mo_zip_streamers_999 = Number.where(site: '999.md', category: 'Компьютеры и оргтехника / Накопители FDD, MO, ZIP, стримеры').count

    # Business
    @current_business_999 = Number.where(site: '999.md', category: 'Бизнес / Действующий бизнес').count
    @sites_and_developing_999 = Number.where(site: '999.md', category: "Бизнес / Сайты и разработка").count
    @doing_business_999 = Number.where(site: '999.md', category: 'Бизнес / Сотрудничество, инвестиции, дилеры').count
    @shares_in_999 = Number.where(site: '999.md', category: 'Бизнес / Акции и доли').count
    @tenders_auctions_999 = Number.where(site: '999.md', category: 'Бизнес / Проведение тендеров и аукционов').count
    @miscellaneous_business_999 = Number.where(site: '999.md', category: 'Бизнес / Разное').count
    @cash_registers_scales_999 = Number.where(site: '999.md', category: 'Бизнес / Торговое оборудование').count
    @legal_services_999 = Number.where(site: '999.md', category: 'Бизнес / Юридические услуги').count
    @advertising_services_999 = Number.where(site: '999.md', category: 'Бизнес / Рекламные услуги').count
    @leasing_999 = Number.where(site: '999.md', category: 'Бизнес / Кредитование и лизинг').count
    @printing_design_999 = Number.where(site: '999.md', category: 'Бизнес / Полиграфия, дизайн').count
    @accounting_audit_services_999 = Number.where(site: '999.md', category: 'Бизнес / Бухгалтерия и аудит').count
    @insurance_services_consulting_999 = Number.where(site: '999.md', category: 'Бизнес / Страховые услуги и консалтинг').count

    # Real Estate
    @appartaments_and_rooms_999 = Number.where(site: '999.md', category: 'Недвижимость / Квартиры и комнаты').count
    @houses_and_garden_999 = Number.where(site: '999.md', category: 'Недвижимость / Дома и дачи').count
    @lands_999 = Number.where(site: '999.md', category: 'Недвижимость / Земельные участки').count
    @commercial_real_estate_999 = Number.where(site: '999.md', category: 'Недвижимость / Коммерческая недвижимость').count
    @garages_and_parking_999 = Number.where(site: '999.md', category: 'Недвижимость / Гаражи и парковки').count
    @real_estate_miscellaneous_999 = Number.where(site: '999.md', category: 'Недвижимость / Разное').count
    @real_estate_services_999 = Number.where(site: '999.md', category: 'Недвижимость / Риэлторские услуги').count

    # Phones
    @mobile_phones_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Мобильные телефоны').count
    @mobile_phones_accessories_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Аксессуары').count
    @mobile_phones_parts_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Запчасти для телефонов').count
    @mobile_numbers_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Номера и абонементы').count
    @mobile_service_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Сервис и ремонт телефонов').count
    @home_phones_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Стационарные телефоны').count
    @radio_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Рации и радиостанции').count
    @pbx_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Офисные АТС').count
    @fax_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Факсы').count
    @mobile_chargers_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Зарядки и аккумуляторы').count
    @phones_miscellaneous_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Разное').count

    # Construction and Repair
    @facing_materials_finishing_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Отделочные и облицовочные материалы').count
    @roofing_materials_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Кровельные материалы').count
    @insulating_materials_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Изоляционные материалы').count
    @lumber_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Пиломатериалы').count
    @building_materials_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Общестроительные материалы').count
    @construction_electrical_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Электрооборудование').count
    @construct_pumps_pump_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Насосы и помпы').count
    @construction_equipment_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Строительная техника').count
    @construct_gas_powered_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Бензоинструменты').count
    @lighting_construction_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Освещение и комплектующие').count
    @construction_pneumatics_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Пневматическое оборудование').count
    @construct_hand_tool_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Ручной инструмент').count
    @plumbing_bath_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Санфаянс, сантехника').count
    @construct_pipes_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Водопровод и канализация').count
    @construct_sinks_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Кухонные мойки').count
    @taps_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Смесители').count
    @construction_miscellaneous_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Разное').count
    @construction_metal_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Изделия из металла').count
    @construct_articles_of_concrete_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Изделия из железобетона').count
    @construct_wood_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Конструкции из дерева').count
    @glass_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Изделия из стекла').count
    @construct_heating_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Обогрев и отопление').count
    @construct_windows_doors_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Окна и двери').count
    @repairs_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Ремонтные работы').count
    @construction_work_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Строительно-монтажные работы').count
    @plumbing_works_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Сантехнические работы').count
    @electrical_work_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Электроработы').count
    @design_and_architecture_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Архитектура, проектирование, дизайн').count
    @metal_work_construct_999 = Number.where(site: '999.md', category: 'Строительство и ремонт / Металлообработка').count

    # Clothes
    @woman_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская одежда').count
    @woman_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская обувь').count
    @female_underwear_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женское нижнее белье').count
    @man_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Мужская одежда').count
    @man_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Мужская обувь').count
    @sport_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Спортивная обувь').count
    @sport_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Спортивная одежда').count
    @thermal_underwear_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Спортивное бельё, купальники').count
    @wedding_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Свадебная одежда').count
    @wedding_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Свадебная обувь').count
    @wedding_accessories_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Свадебные аксессуары').count
    @special_clothing_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Спецодежда и спецобувь').count
    @carnival_costumes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Карнавальные костюмы').count
    @clothes_miscellaneous_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Разное').count
    @clothing_for_children_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Детская одежда').count
    @childrens_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Детская обувь').count
    @delivery_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Доставка одежды и обуви').count
    @laundry_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Уход и пошив одежды').count
    @watches_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Наручные часы').count
    @jewelry_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Ювелирные изделия, бижутерия').count
    @glasses_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Очки').count
    @bags_briefcases_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Сумочки, портфели').count
    @belts_gloves_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Кошельки, ремни, перчатки').count
    @neckties_shawls_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Галстуки, шарфы').count
    @hats_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Головные уборы').count

    # Furniture and Interior
    @upholstery_furniture_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Мягкая мебель').count
    @bedrooms_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Спальни и кровати').count
    @tables_chairs_stools_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Столы и стулья').count
    @cabinets_cabinets_coupe_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Шкафы и стенки').count
    @kitchen_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Кухни').count
    @antiques_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Антиквариат, коллекционирование').count
    @outdoor_furniture_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Дачная мебель').count
    @furniture_for_horeca_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Мебель для кафе, баров и ресторанов').count
    @inflatable_furniture_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Надувная мебель').count
    @custom_furniture_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Изготовление и ремонт мебели').count
    @pictures_watches_interior_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Картины, часы').count
    @blinds_curtains_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Жалюзи и шторы').count
    @home_mirrors_999 = Number.where(site: '999.md', category: 'Мебель и интерьер / Зеркала').count

    # Audio Video Photo
    @tv_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Телевизоры').count
    @video_camera_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Видеокамеры').count
    @dvd_cd_players_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Видеоплееры').count
    @satellite_dish_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Спутниковые антенны').count
    @tv_projectors_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Проекторы и экраны').count
    @digital_cameras_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Фотоаппараты').count
    @lenses_cvetofiltry_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Объективы, светофильтры').count
    @accessories_photo_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Аксессуары фото').count
    @photo_flash_light_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Вспышки, свет').count
    @tripods_monopods_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Штативы, моноподы').count
    @binoculars_telescopes_microscopes_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Бинокли, телескопы, микроскопы').count
    @photo_memory_cards_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Карты памяти').count
    @photos_bags_cases_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Сумки и чехлы').count
    @accums_photo_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Аккумуляторы и зарядные устройства').count
    @miscellaneous_audiovideophoto_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Разное').count
    @acoustics_columns_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Акустика, колонки').count
    @microphones_audiovideophoto_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Микрофоны, наушники').count
    @portable_audio_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Портативное аудио').count
    @home_audio_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Домашнее аудио').count
    @stereo_components_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Стереокомпоненты').count
    @home_cinema_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Домашние кинотеатры').count
    @accessories_video_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Аксессуары аудио, видео').count
    @audio_studio_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Студийное аудио').count
    @studio_lighting_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Студийный свет').count
    @accessories_studio_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Аксессуары студия').count
    @studio_video_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Студийное видео').count
    @digitization_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Оцифровка, обработка').count
    @audiovideophoto_repair_999 = Number.where(site: '999.md', category: 'Аудио-Видео-Фото / Ремонт и установка аудио-видео-фото').count

    # All Else
    @all_else_professional_equipment_999 = Number.where(site: '999.md', category: 'Все остальное / Профессиональное оборудование').count
    @industry_raw_materials_999 = Number.where(site: '999.md', category: 'Все остальное / Промышленность и сырьё').count
    @security_safety_999 = Number.where(site: '999.md', category: 'Все остальное / Охрана и безопасность').count
    @lombard_999 = Number.where(site: '999.md', category: 'Все остальное / Ломбард').count
    @handmade_999 = Number.where(site: '999.md', category: 'Все остальное / Handmade').count
    @food_drinks_tobacco_999 = Number.where(site: '999.md', category: 'Все остальное / Продукты').count
    @reports_dissertations_999 = Number.where(site: '999.md', category: 'Все остальное / Рефераты и дипломные работы').count
    @sex_shops_999 = Number.where(site: '999.md', category: 'Все остальное / Интимные товары').count
    @books_periodicals_999 = Number.where(site: '999.md', category: 'Все остальное / Книги и периодика').count
    @translation_999 = Number.where(site: '999.md', category: 'Все остальное / Бюро переводов').count
    @lost_found_999 = Number.where(site: '999.md', category: 'Все остальное / Бюро находок').count
    @sewing_999 = Number.where(site: '999.md', category: 'Все остальное / Всё для шитья').count
    @all_else_miscellaneous_999 = Number.where(site: '999.md', category: 'Все остальное / Разное').count

    # All for Celebrations
    @little_touches_999 = Number.where(site: '999.md', category: 'Все для торжеств / Подарки и сувениры').count
    @fans_of_smoking_999 = Number.where(site: '999.md', category: 'Все для торжеств / Любителям курения').count
    @fireworks_sky_lanterns_999 = Number.where(site: '999.md', category: 'Все для торжеств / Фейерверки, небесные фонарики').count
    @elite_alcohol_999 = Number.where(site: '999.md', category: 'Все для торжеств / Алкоголь и напитки').count
    @flowers_999 = Number.where(site: '999.md', category: 'Все для торжеств / Цветы, букеты').count
    @photo_video_services_999 = Number.where(site: '999.md', category: 'Все для торжеств / Фото-видео услуги').count
    @musicians_999 = Number.where(site: '999.md', category: 'Все для торжеств / Артисты, музыканты и шоу-программы').count
    @maintenance_celebrations_999 = Number.where(site: '999.md', category: 'Все для торжеств / Банкетные залы, обслуживание').count
    @transport_for_celebrations_999 = Number.where(site: '999.md', category: 'Все для торжеств / Транспорт для торжеств').count
    @cookery_999 = Number.where(site: '999.md', category: 'Все для торжеств / Кулинария').count
    @allForCelebrations_miscellaneous_999 = Number.where(site: '999.md', category: 'Все для торжеств / Разное').count

    # Household Appliances
    @washingMachines_999 = Number.where(site: '999.md', category: 'Бытовая техника / Стиральные машины').count
    @refrigerators_999 = Number.where(site: '999.md', category: 'Бытовая техника / Холодильники').count
    @stove_oven_999 = Number.where(site: '999.md', category: 'Бытовая техника / Газовые и электроплиты').count
    @microwaves_999 = Number.where(site: '999.md', category: 'Бытовая техника / Микроволновые печи').count
    @dishwashers_999 = Number.where(site: '999.md', category: 'Бытовая техника / Посудомоечные машины').count
    @hoods_999 = Number.where(site: '999.md', category: 'Бытовая техника / Вытяжки').count
    @kitchen_appliances_999 = Number.where(site: '999.md', category: 'Бытовая техника / Техника для кухни').count
    @tehnika_dlya_doma_999 = Number.where(site: '999.md', category: 'Бытовая техника / Техника для дома').count
    @personal_care_999 = Number.where(site: '999.md', category: 'Бытовая техника / Индивидуальный уход').count
    @air_conditioners_999 = Number.where(site: '999.md', category: 'Бытовая техника / Кондиционеры, вентиляция').count
    @boilersBoilers_999 = Number.where(site: '999.md', category: 'Бытовая техника / Водонагреватели, колонки').count
    @air_cleaners_humidifiers_999 = Number.where(site: '999.md', category: 'Бытовая техника / Ионизаторы, климатизаторы').count
    @appliance_repair_999 = Number.where(site: '999.md', category: 'Бытовая техника / Ремонт и установка бытовой техники').count
    @household_miscellaneous_999 = Number.where(site: '999.md', category: 'Бытовая техника / Разное').count

    # Sports Health Beauty
    @trainers_equipment_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Спортивный инвентарь').count
    @nutrition_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Спортивное питание').count
    @sports_clubs_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Спортивные клубы и бассейны').count
    @pools_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Бассейны').count
    @scooters_skates_skis_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Самокаты, ролики, лыжи').count
    @medical_facilities_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Медицинское оборудование').count
    @drugs_medicines_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Лекарства, добавки, витамины').count
    @essential_oils_teas_herbs_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Лечебные масла, чаи, травы').count
    @nails_manicure_pedicure_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Маникюр, педикюр').count
    @beauty_makeup_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Косметология, макияж, тату').count
    @hair_care_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Парикмахерские услуги').count
    @traditional_medicine_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Медицинские услуги').count
    @perfumes_cosmetics_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Парфюмерия').count
    @care_beautry_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Косметика и уход').count
    @sport_health_beauty_miscellaneous_999 = Number.where(site: '999.md', category: 'Спорт, здоровье, красота / Разное').count

    # Tourism Leisure
    @holidays_abroad_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Туризм за рубежом').count
    @tourism_moldova_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Внутренний туризм').count
    @tents_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Палатки').count
    @leisure_products_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Товары для отдыха').count
    @flashlights_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Фонарики, фонари').count
    @backpacks_bags_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Рюкзаки, сумки и чемоданы').count
    @sauna_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Сауны и бани').count
    @massage_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Массажные салоны').count
    @entertainment_recreation_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Развлечения и отдых').count
    @guns_knives_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Оружие и ножи').count
    @fishing_rods_tackles_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Удочки и снасти').count
    @tourism_miscellaneous_999 = Number.where(site: '999.md', category: 'Туризм, отдых и развлечения / Разное').count


    # All for home and office
    @cookware_dishes_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Кухонные принадлежности, посуда').count
    @fabrics_linen_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Домашний текстиль и ковры').count
    @household_supplies_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Хозяйственный инвентарь').count
    @household_chemistry_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Бытовая химия').count
    @accessories_toilet_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Аксессуары для ванны и туалета').count
    @stationary_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Канцелярские товары').count
    @safes_fireproof_cabinets_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Сейфы, несгораемые шкафы').count
    @presentation_equipment_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Презентационный инвентарь').count
    @miscellaneous_allforhomeoffice_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Разное').count
    @cleaning_services_999 = Number.where(site: '999.md', category: 'Все для дома и офиса / Клининговые услуги').count

    # Children World
    @stroller_999 = Number.where(site: '999.md', category: 'Детский мир / Коляски').count
    @toys_999 = Number.where(site: '999.md', category: 'Детский мир / Игрушки и развлечения').count
    @furniture_children_999 = Number.where(site: '999.md', category: 'Детский мир / Мебель для детей').count
    @walkers_slings_cots_999 = Number.where(site: '999.md', category: 'Детский мир / Ходунки, слинги и манежи').count
    @care_hygiene_children_999 = Number.where(site: '999.md', category: 'Детский мир / Предметы ухода и гигиены').count
    @car_chair_children_999 = Number.where(site: '999.md', category: 'Детский мир / Детские автокресла').count
    @power_accessories_food_children_999 = Number.where(site: '999.md', category: 'Детский мир / Питание и аксессуары для питания').count
    @children_miscellaneous_999 = Number.where(site: '999.md', category: 'Детский мир / Разное').count
    @education_child_care_999 = Number.where(site: '999.md', category: 'Детский мир / Образование и няни').count

    # Agriculture
    @livestock_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Животноводство').count
    @aviculture_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Птицеводство').count
    @beekeeping_honey_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Пчеловодство и мед').count
    @animal_feed_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Корма для животных').count
    @pisciculture_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Рыбоводство').count
    @fertilizers_chemicals_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Удобрения и химикаты').count
    @seeds_seedlings_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Семена, рассада, саженцы').count
    @farm_equipment_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Оборудование').count
    @wood_coal_fuel_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Дрова, уголь, горючее').count
    @agro_tools_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Инструменты').count
    @agro_other_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Разное').count
    @berries_mushrooms_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Ягоды и грибы').count
    @dried_fruits_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Сухофрукты').count
    @vegetables_fruits_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Овощи и Фрукты').count
    @dairy_products_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Молочная продукция').count
    @grain_cereals_flours_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Зерно, крупы, мука').count
    @agro_oil_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Масло').count
    @nuts_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Орехи, подсолнух').count
    @eggs_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Яйца').count
    @meat_bird_fish_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Мясо, птица, рыба').count
    @agro_services_999 = Number.where(site: '999.md', category: 'Сельское хозяйство / Сельхоз Услуги').count

    # Animals and Plants
    @dogs_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Собаки').count
    @cats_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Кошки').count
    @the_birds_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Птицы').count
    @fish_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Аквариумистика').count
    @other_animals_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Другие животные').count
    @accessories_for_animals_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Зоотовары').count
    @animals_missing_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Поиск питомцев').count
    @tying_animals_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Вязка').count
    @care_animals_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Услуги питомцам').count
    @plants_flowers_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Растения').count
    @inventory_plants_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Товары для растений').count
    @miscellaneous_animals_plants_999 = Number.where(site: '999.md', category: 'Питомцы и растения / Разное').count

    # Musical Instruments
    @guitars_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Гитары').count
    @guitar_effects_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Гитарные аксессуары').count
    @keyboard_instruments_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Клавишные').count
    @accordions_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Аккордеоны и баяны').count
    @strings_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Струнные').count
    @winds_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Духовые').count
    @percussion_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Ударные').count
    @speakers_acoustics_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Колонки и акустика').count
    @audio_mixers_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Микшеры').count
    @amplifiers_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Усилители').count
    @stage_equipment_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Сценическое оборудование').count
    @dj_equipment_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / DJ оборудование').count
    @accessories_components_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Аксессуары и комплектующие').count
    @racks_frames_chairs_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Стойки, рамы и стулья').count
    @cases_music_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Кейсы и чехлы').count
    @repair_music_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Ремонт и настройка музыкальных инструментов').count
    @learning_music_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Обучение').count
    @recording_mixing_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Запись и сведение').count
    @rent_music_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Прокат').count
    @miscellaneous_music_999 = Number.where(site: '999.md', category: 'Музыкальные инструменты / Разное').count


    @yellowPages = Number.where(site: 'yellowpages.md', category: 'Юридические лица').count


    @fitness = Number.where(category: 'Фитнес клуб').count
    @tour_agency = Number.where(category: 'Туристическое агенство').count

    render 'parsing/index'
  end

  def sim_cards
    @sim_cards = SimCard.all
    render 'sim_cards/index'
  end

end
