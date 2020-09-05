module PagesHelper
  def total_amount_collected(supporters)
    total = 0
    if supporters
      supporters.each do |supporter|
        total += supporter.donated_amount
      end
    end
    number_to_currency(total, unit: "R$", separator: ",", delimiter: "")
  end

  def format_monetary_value(value)
    number_to_currency(value, unit: "R$", separator: ",", delimiter: "")
  end

  def formart_date(date)
    date.strftime("%d/%m/%Y")
  end
end
