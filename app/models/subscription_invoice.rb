class SubscriptionInvoice
  attr_reader :monthly_price_cents, :active_days, :days_in_cycle

  def initialize(monthly_price_cents:, active_days:, days_in_cycle:)
    @monthly_price_cents = monthly_price_cents
    @active_days = active_days
    @days_in_cycle = days_in_cycle
  end

  def prorated_total_cents
    ((monthly_price_cents.to_f / days_in_cycle) * [active_days, days_in_cycle].min).round
  end
end
