class ApplicationController < ActionController::Base

  def index
    render 'layouts/index'
  end

  def create_task
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
    @passengers_cars_999 = Number.where(site: '999.md', category: 'Транспорт / Легковые авто').count
    @parts_for_cars_999 = Number.where(site: '999.md', category: 'Транспорт / Запчасти и разборка легковых автомобилей').count
    @parts_for_trucks_999 = Number.where(site: '999.md', category: 'Транспорт / Запчасти для грузовых автомобилей').count
    @wheel_and_tires_999 = Number.where(site: '999.md', category: 'Транспорт / Диски и шины').count
    @airplanes_999 = Number.where(site: '999.md', category: 'Транспорт / Воздушный транспорт').count
    @trailers_999 = Number.where(site: '999.md', category: 'Транспорт / Прицепы').count
    @agriculture_999 = Number.where(site: '999.md', category: 'Транспорт / Сельхозтехника').count
    @special_equipment_999 = Number.where(site: '999.md', category: 'Транспорт / Спецтехника').count
    @snowmobiles_and_jet_ski_999 = Number.where(site: '999.md', category: 'Транспорт / Водный транспорт').count
    @buses_and_minibuses_999 = Number.where(site: '999.md', category: 'Транспорт / Автобусы и микроавтобусы').count
    @trucks_999 = Number.where(site: '999.md', category: 'Транспорт / Грузовые автомобили').count
    @motorcycles_999 = Number.where(site: '999.md', category: 'Транспорт / Мотоциклы и мототехника').count
    @moto_equipment_999 = Number.where(site: '999.md', category: 'Транспорт / Мотоэкипировка').count
    @electric_scooters_999 = Number.where(site: '999.md', category: 'Транспорт / Гироскутеры, электросамокаты').count
    @carcaraudio_999 = Number.where(site: '999.md', category: 'Транспорт / Автомагнитолы и DVD').count
    @gps_navigation_999 = Number.where(site: '999.md', category: 'Транспорт / GPS, навигация').count
    @acoustic_999 = Number.where(site: '999.md', category: 'Транспорт / Автоакустика').count
    @supplies_of_car_audio_999 = Number.where(site: '999.md', category: 'Транспорт / Комплектующие автозвука').count
    @bicycles_999 = Number.where(site: '999.md', category: 'Транспорт / Велотранспорт').count
    @video_recorders_999 = Number.where(site: '999.md', category: 'Транспорт / Видеорегистраторы').count
    @radars_alarms_999 = Number.where(site: '999.md', category: 'Транспорт / Радары, сигнализация').count
    @current_business_999 = Number.where(site: '999.md', category: 'Бизнес / Действующий бизнес').count
    @sites_and_developing_999 = Number.where(site: '999.md', category: 'Бизнес / Сайты и разработка').count
    @appartaments_and_rooms_999 = Number.where(site: '999.md', category: 'Недвижимость / Квартиры и комнаты').count
    @houses_and_garden_999 = Number.where(site: '999.md', category: 'Недвижимость / Дома и дачи').count
    @mobile_phones_999 = Number.where(site: '999.md', category: 'Телефоны и связь / Мобильные телефоны').count
    @woman_clothes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская одежда').count
    @woman_shoes_999 = Number.where(site: '999.md', category: 'Одежда, обувь и аксессуары / Женская обувь').count
    render 'parsing/index'
  end

  def sim_cards
    @sim_cards = SimCard.all
    render 'sim_cards/index'
  end

end
