class Parser999mdController < ApplicationController

  require 'open-uri'
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

  def all
    bicycles
    cars_passengers
    parts_for_cars
    parts_for_trucks
    wheel_and_tires
    trailers
    buses_and_minibuses
    trucks
    motorcycles
    moto_equipment
    agriculture
    gps_navigation
    supplies_of_car_audio
    special_equipment
    acoustic
    video_recorders
    radars_alarms
    carcaraudio
    snowmobiles_and_jet_ski
    airplanes
    electric_scooters
    current_business
    sites_and_developing
    appartaments_and_rooms
    houses_and_garden
    mobile_phones
    woman_clothes
    woman_shoes
  end

  def cars_passengers
    parser('https://91.220.207.88/ru/list/transport/cars?page=', 'Транспорт / Легковые авто', 700)
  end

  def parts_for_cars
    parser('https://91.220.207.88/ru/list/transport/spare-parts-for-cars?page=', 'Транспорт / Запчасти и разборка легковых автомобилей', 434)
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

  def current_business
    parser('https://91.220.207.88/ru/list/business/the-current-business?page=', 'Бизнес / Действующий бизнес', 16)
  end

  def sites_and_developing
    parser('https://91.220.207.88/ru/list/business/dev-support-sites?page=', 'Сайты и разработка', 13)
  end

  def appartaments_and_rooms
    parser('https://91.220.207.88/ru/list/real-estate/apartments-and-rooms?page=', 'Недвижимость / Квартиры и комнаты', 429)
  end

  def houses_and_garden
    parser('https://91.220.207.88/ru/list/real-estate/house-and-garden?page=', 'Недвижимость / Дома и дачи', 137)
  end

  def mobile_phones
    parser('https://91.220.207.88/ru/list/phone-and-communication/mobile-phones?page=', 'Телефоны и связь / Мобильные телефоны', 247)
  end

  def woman_clothes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/clothes-for-women?page=', 'Одежда, обувь и аксессуары / Женская одежда', 110)
  end

  def woman_shoes
    parser('https://91.220.207.88/ru/list/clothes-and-shoes/shoes-for-women?page=', 'Одежда, обувь и аксессуары / Женская обувь', 85)
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
