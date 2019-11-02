class CsvController < ApplicationController

  def ghidtur_import

    @file = Roo::Spreadsheet.open('/csv/ghidtur4.xlsx')
    @file.each do |row|

        @check_name = row[0].to_s.gsub!(/\d+/,"")
      
        @fullname = if !@check_name =~ (/^[a-zA-Z0-9_\-+ ]*$/)
                      Translit.convert(row[0])
                    else
                      row[0].to_s
                    end


        if !row[1].to_s.empty?
          @phone_number = row[1]
        elsif !row[2].to_s.empty?
          @phone_number = row[2]
        elsif !row[3].to_s.empty?
          @phone_number = row[3]
        elsif !row[4].to_s.empty?
          @phone_number = row[4]
        elsif !row[5].to_s.empty?
          @phone_number = row[5]
        elsif !row[6].to_s.empty?
          @phone_number = row[6]
        end


        if @phone_number.to_s.start_with?('+373')
          @phone_number = @phone_number[1..-1]
        elsif @phone_number.to_s.start_with?('373')
          @phone_number = @phone_number
        elsif @phone_number.to_s.start_with?('06') || @phone_number.to_s.start_with?('07')
          @phone_number = @phone_number[1..-1]
          @phone_number = '373' + @phone_number
        elsif @phone_number.to_s.start_with?('6') || @phone_number.to_s.start_with?('7')
          @phone_number = '373' + @phone_number
        end

        @number_exist_999 = Number.where(site: '999.md', phone: @phone_number)
        if @number_exist_999.exists?
          @number_exist_999.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
        end

        @number_exist_yellowpage = Number.where(site: 'yellowpages.md', phone: @phone_number)
        if @number_exist_yellowpage.exists?
          @number_exist_yellowpage.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
        end

        next unless @phone_number.size === 11
        next unless /\b(3736[0-9]{7}|3737[0-8][0-9]{6}|37379[0-8][0-9]{5}|373799[0-8][0-9]{4}|3737999[0-8][0-9]{3}|37379999[0-8][0-9]{2}|373799999[0-8][0-9]|3737999999[0-9])\b/.match?(@phone_number)

        @number_exist = Number.where(phone: @phone_number)
        if @number_exist.exists?
          @number_exist.update(phone: @phone_number, category: 'Туристическое агенство', region: 'Кишинёв', country: 'Молдова', name: @fullname)
        else
          @number = Number.new
          @number.update(phone: @phone_number, category: 'Туристическое агенство', region: 'Кишинёв', country: 'Молдова', name: @fullname)
        end



      end

  end

  def doza_import

    @file = Roo::Spreadsheet.open('/home/dmitriy/Projects/sms/public/csv/doza_fitness.xls')
    @file.each do |row|

      @fullname = row[0]
      unless @fullname.match(/^[a-zA-Z0-9_\-+ ]*$/)
        @fullname = row[1]
      end

      if @fullname.nil?
        @fullname = Translit.convert(row[0])
      end

      @phone_number = row[2].to_i.to_s
      @phone_number = '373' + @phone_number

      @number_exist_999 = Number.where(site: '999.md', phone: @phone_number)
      if @number_exist_999.exists?
        @number_exist_999.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      @number_exist_yellowpage = Number.where(site: 'yellowpages.md', phone: @phone_number)
      if @number_exist_yellowpage.exists?
        @number_exist_yellowpage.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      next unless @phone_number.size === 11
      next unless /\b(3736[0-9]{7}|3737[0-8][0-9]{6}|37379[0-8][0-9]{5}|373799[0-8][0-9]{4}|3737999[0-8][0-9]{3}|37379999[0-8][0-9]{2}|373799999[0-8][0-9]|3737999999[0-9])\b/.match?(@phone_number)

      @number_exist = Number.where(phone: @phone_number)
      if @number_exist.exists?
        @number_exist.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      else
        @number = Number.new
        @number.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      end

    end


  end

  def energy_import

    @file = Roo::Spreadsheet.open('/csv/energy_fitness_2.xls')
    @file.each do |row|
      @name = if row[0].nil?
                ''
              else
                row[0]
              end
      @surname = if row[1].nil?
                   ''
                 else
                   row[1]
                 end
      @fullname = Translit.convert(@name + ' ' + @surname)
      @fullname = @fullname.split.map(&:capitalize) * ' '
      @phone_number = row[2].to_i.to_s
      @phone_number = @phone_number.gsub(/[^0-9]/, '')
      if @phone_number.size === 9
        @phone_number = @phone_number[1..-1]
        @phone_number = '373' + @phone_number
      elsif @phone_number.size === 8
        @phone_number = '373' + @phone_number
      end

      @number_exist_999 = Number.where(site: '999.md', phone: @phone_number)
      if @number_exist_999.exists?
        @number_exist_999.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      @number_exist_yellowpage = Number.where(site: 'yellowpages.md', phone: @phone_number)
      if @number_exist_yellowpage.exists?
        @number_exist_yellowpage.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      next unless @phone_number.size === 11

      @number_exist = Number.where(phone: @phone_number)
      if @number_exist.exists?
        @number_exist.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      else
        @number = Number.new
        @number.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      end

    end

  end

  def wellness_import

    @file = Roo::Spreadsheet.open('/csv/wellness.xls')
    @file.each do |row|
      @fullname = Translit.convert(row[0])



      if row[1].to_s === '+373'
        @phone_number = row[1].to_s + row[2].to_s + row[3].to_i.to_s
        @phone_number = @phone_number[1..-1]
      elsif row[1].to_s === '373'
        @phone_number = row[1].to_s + row[2].to_s + row[3].to_i.to_s
      elsif row[2].to_s === '373'
        @phone_number = row[2].to_i.to_s + row[3].to_i.to_s
      elsif row[2].to_s === '+373'
        @phone_number = row[2].to_i.to_s + row[3].to_i.to_s
        @phone_number = @phone_number[1..-1]
      elsif row[2].to_s.start_with?('06') || row[2].to_s.start_with?('07')
        @phone_number = row[2] + row[3].to_i.to_s
        @phone_number = @phone_number[1..-1]
        @phone_number = '373' + @phone_number
      elsif row[2].to_s.start_with?('6') || row[2].to_s.start_with?('7')
        @phone_number = row[2].to_i.to_s + row[3].to_i.to_s
        @phone_number = '373' + @phone_number
      elsif row[3].to_s.start_with?('06') || row[3].to_s.start_with?('07')
        @phone_number = row[3].to_i.to_s
        @phone_number = @phone_number[1..-1]
        @phone_number = '373' + @phone_number
      elsif row[3].to_s.start_with?('6') || row[3].to_s.start_with?('7')
        @phone_number = row[3].to_i.to_s
        @phone_number = '373' + @phone_number
      end



      @phone_number = @phone_number.to_s

      @number_exist_999 = Number.where(site: '999.md', phone: @phone_number)
      if @number_exist_999.exists?
        @number_exist_999.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      @number_exist_yellowpage = Number.where(site: 'yellowpages.md', phone: @phone_number)
      if @number_exist_yellowpage.exists?
        @number_exist_yellowpage.update(phone: @phone_number, site: nil, category: 'Фитнес клуб', name: @fullname)
      end

      next unless @phone_number.size === 11

      next unless /\b(3736[0-9]{7}|3737[0-8][0-9]{6}|37379[0-8][0-9]{5}|373799[0-8][0-9]{4}|3737999[0-8][0-9]{3}|37379999[0-8][0-9]{2}|373799999[0-8][0-9]|3737999999[0-9])\b/.match?(@phone_number)
      @number_exist = Number.where(phone: @phone_number)
      if @number_exist.exists?
        @number_exist.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      else
        @number = Number.new
        @number.update(phone: @phone_number, category: 'Фитнес клуб', region: 'Кишинёв', country: 'Молдова', name: @fullname)
      end


    end

  end


end
