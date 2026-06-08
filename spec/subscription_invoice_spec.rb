require_relative "../app/models/subscription_invoice"

invoice = SubscriptionInvoice.new(monthly_price_cents: 10_000, active_days: 15, days_in_cycle: 30)
raise "expected prorated total" unless invoice.prorated_total_cents == 5_000

puts "PASS subscription invoice"
