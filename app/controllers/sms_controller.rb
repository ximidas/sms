class SmsController < ApplicationController

  def send_sms
    @task_id = params[:task_id]
    @sender_sim_card = params[:sim_card_id]
    @sms_quantity = params[:sms_quantity].to_i
    @sms_text = params[:sms_text]
    @gsm = Gsm::Modem.new(File.join(Rails.root, '/log/gsm_modem'))
    @numbers = Task.where(task_id: @task_id).limit(@sms_quantity)

    @numbers.each do |number|
      @msg = Gsm::Outgoing.new(@gsm, number.phone, @sms_text)
      @msg.send!
      number.update(status: 1, sim_card_id: @sender_sim_card)
      @sim_card = SimCard.where(id: @sender_sim_card)
      @sim_card.update(sms_available: @sim_card.pluck(:sms_available).first.to_i - 1)
    end

    redirect_to send_sms_path, notice: "Отправлено"

  end

end
