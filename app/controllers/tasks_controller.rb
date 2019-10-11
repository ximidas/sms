class TasksController < ApplicationController

  def create

    if params[:client_id].nil? || params[:client_id] === "Выбрать"
      @client = Client.new
      @client.update(contact_name: params[:contact_name], company: params[:company], phone: params[:phone])
      @client_id = @client.id
    else
      @client_id = params[:client_id].to_i
    end

    @sms_quantity = params[:sms_quantity].to_i
    @categories = params[:categories]
    @region = params[:region]
    @country = params[:country]

    @task_id = rand(9).to_s + Time.now.strftime("H%HM%MS%SsD%dM%mY%Y")

    if @categories.nil? || @sms_quantity.zero? || @client_id.nil?

      redirect_to create_task_path, notice: "Не указано: #{@categories.nil? ? '- Категория ' : ''}  #{@sms_quantity.zero? ? '- Кол-во смс ' : ''} #{@client_id.nil? ? '- Клиент' : ''}"

    else

      @payment_received_divided = params[:payment_received].to_f / @sms_quantity

      if @categories.count > 1
        @divide_quantity = @sms_quantity / @categories.count
        @categories.each do |category|
          @numbers = Number.where(category: category, region: @region, country: @country).order("RANDOM()").limit(@divide_quantity)
          @numbers.each do |number|
            @task = Task.new
            @task.update(task_id: @task_id, client_id: @client_id, payment_received: @payment_received_divided, phone: number.phone, region: number.region, category: number.category, status: 2)
          end
        end
      else
        @numbers = Number.where(category: @categories[0], region: @region, country: @country).order("RANDOM()").limit(@sms_quantity)
        @numbers.each do |number|
          @task = Task.new
          @task.update(task_id: @task_id, client_id: @client_id, payment_received: @payment_received_divided, phone: number.phone, region: number.region, category: number.category, status: 2)
        end
      end

      @count = Task.where(task_id: @task_id).count

      if @count.zero?
        redirect_to create_task_path, notice: "Задача не создана! В базе нет номеров по данному запросу."
      elsif @sms_quantity > @count
        redirect_to create_task_path, notice: "Не хватает! Задача на #{@sms_quantity}, создано #{@count}. Нужно ещё #{@sms_quantity - @count}. ID созданной задачи: #{@task_id}"
      else
        redirect_to create_task_path, notice: "Задача успешно создана! ID задачи: #{@task_id}"
      end

    end


  end

  def view
    @tasks = Task.where(task_id: params[:task_id])
    render 'create_task/view'
  end

end
