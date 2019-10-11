class Parser999mdController < ApplicationController

  require 'open-uri'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  ### TRANSPORT

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

  def current_business
    parser('https://91.220.207.88/ru/list/business/the-current-business?page=', 'Бизнес / Действующий бизнес', 16)
  end

  def sites_and_developing
    parser('https://91.220.207.88/ru/list/business/dev-support-sites?page=', 'Сайты и разработка', 13)
  end


  ### REAL ESTATE

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

  def woman_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/clothes-for-women?page=', 'Одежда, обувь и аксессуары / Женская одежда', 110)
  end

  def woman_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/shoes-for-women?page=', 'Одежда, обувь и аксессуары / Женская обувь', 85)
  end

  ## COMPUTERS AND EQUIPMENT

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

  private
  def parser(page, category, end_page)

    @start_page = 0
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
            @region = @region.gsub('<dd>, ', '')
            @region = @region.gsub('</dd>', '')
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

end
