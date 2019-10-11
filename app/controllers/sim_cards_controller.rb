class SimCardsController < ApplicationController

  def add_card

    if params[:number].empty? || params[:sms_available].empty? || params[:price].empty? || params[:operator].empty?
      redirect_to sim_cards_path, notice: "Не все параметры указаны"
    else
      @sim_card = SimCard.new
      @sim_card.update(number: params[:number], sms_available: params[:sms_available], price: params[:price], sms_cost: params[:sms_cost], operator: params[:operator])
      redirect_to sim_cards_path, notice: "Сим карта добавлена!"
    end
  end

  def add_funds
    if params[:sim_card_id].empty? || params[:summ].empty?
      redirect_to sim_cards_path, notice: "Не все параметры указаны"
    else
      @add_funds = SimCardFund.new
      @add_funds.update(sim_card_id: params[:sim_card_id], summ: params[:summ])

      #add sms to card
      @sim_card = SimCard.where(id: params[:sim_card_id])
      @sim_card.update(sms_available: @sim_card.pluck(:sms_available).first.to_i + params[:sms_quantity].to_i)

      redirect_to sim_cards_path, notice: "Сим карта пополнена!"
    end
  end

  def view_deposit_history
    @deposits = SimCardFund.where(sim_card_id: params[:id])
    render 'sim_cards/view_deposits_history'
  end

end
