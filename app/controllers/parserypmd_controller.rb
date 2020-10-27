class ParserypmdController < ApplicationController
  require 'open-uri'
  require 'webdrivers'

  def parser
    @page = 'http://www.yellowpages.md/rus/list?page='

    @start_page = 1
    @end_page = 500

    @site = 'yellowpages.md'
    @country = 'Молдова'
    @browser = Watir::Browser.new :firefox, headless: false

    begin
      @browser.goto(@page + @start_page.to_s)

      @promote_block = @browser.divs(class: %w[node node-company node--company--search_index promote])
      @simple_block = @browser.divs(class: %w[node node-company node--company--search_index])

      @company_block = @start_page > 2 ? @simple_block : @promote_block

      @company_block.each do |company_block|
        @check_number = company_block.element(css: "div[class='contact mob']").exists?
        if @check_number == true
          @company_name = company_block.div(class: 'node-title').text
          @phone_number = company_block.element(css: "span[class='link']").text
          @phone_number = @phone_number[1..-1]
          @phone_number = '373' + @phone_number
          @region = company_block.div(class: 'street-block').text
          @region = if @region.include? 'Кишинэу'
                      'Кишинёв'
                    elsif @region.include? 'Бэлць'
                      'Бельцы'
                    elsif @region.include? 'Анений Ной'
                      'Новые Анены'
                    elsif @region.include? 'Басарабяска'
                      'Бессарабка'
                    elsif @region.include? 'Бричень'
                      'Бричаны'
                    elsif @region.include? 'Кахул'
                      'Кагул'
                    elsif @region.include? 'Кантемир'
                      'Кантемир'
                    elsif @region.include? 'Гагаузия'
                      'Гагаузия'
                    elsif @region.include? 'Чимишлия'
                      'Чимишлия'
                    elsif @region.include? 'Криулень'
                      'Криуляны'
                    elsif @region.include? 'Дондушень'
                      'Дондюшаны'
                    elsif @region.include? 'Дрокия'
                      'Дрокия'
                    elsif @region.include? 'Дубэсарь'
                      'Дубоссары'
                    elsif @region.include? 'Единец'
                      'Единцы'
                    elsif @region.include? 'Флорешть'
                      'Флорешты'
                    elsif @region.include? 'Фэлешть'
                      'Фалешты'
                    elsif @region.include? 'Глодень'
                      'Глодяны'
                    elsif @region.include? 'Хынчешть'
                      'Хынчешты'
                    elsif @region.include? 'Яловень'
                      'Яловены'
                    elsif @region.include? 'Леова'
                      'Леова'
                    elsif @region.include? 'Ниспорень'
                      'Ниспорены'
                    elsif @region.include? 'Окница'
                      'Окница'
                    elsif @region.include? 'Орхей'
                      'Оргеев'
                    elsif @region.include? 'Резина'
                      'Резина'
                    elsif @region.include? 'Рышкань'
                      'Рышканы'
                    elsif @region.include? 'Сорока'
                      'Сороки'
                    elsif @region.include? 'Стрэшень'
                      'Страшены'
                    elsif @region.include? 'Сынджерей'
                      'Сынджерей'
                    elsif @region.include? 'Тараклия'
                      'Тараклия'
                    elsif @region.include? 'Теленешть'
                      'Теленешты'
                    elsif @region.include? 'Унгень'
                      'Унгены'
                    elsif @region.include? 'Шолдэнешть'
                      'Шолданешты'
                    elsif @region.include? 'Штефан-Водэ'
                      'Штефан-Водэ'
                    elsif @region.include? 'Приднестровье'
                      'Приднестровье'
                    elsif @region.include? 'Тирасполь'
                      'Тирасполь'
                    elsif @region.include? 'Бендеры'
                      'Бендеры'
                    else
                      'Не определён'
                    end

          @number_exist_999 = Number.where(site: '999.md', phone: @phone_number)
          if @number_exist_999.exists?
            @number_exist_999.update(site: @site, category: 'Юридические лица', name: @company_name)
          end

          @number_exist_yp = Number.where(phone: @phone_number, site: @site)
          unless @number_exist_yp.exists?
            @number = Number.new
            @number.update(phone: @phone_number, name: @company_name, region: @region, site: @site, category: 'Юридические лица', country: 'Молдова')
          end
        end
      end

      @start_page += 1
      puts "Парсинг страницы #{@start_page} завершен"
    end until @start_page > @end_page
  end

end
