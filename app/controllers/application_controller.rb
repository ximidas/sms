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
    @sites_and_developing_999 = Number.where(site: '999.md', category: 'Бизнес / Сайты и разработка').count

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

    # Clothes
    @woman_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская одежда').count
    @woman_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская обувь').count
    render 'parsing/index'
  end

  def sim_cards
    @sim_cards = SimCard.all
    render 'sim_cards/index'
  end

end
