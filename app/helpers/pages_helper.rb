module PagesHelper
  def total_amount_collected(supporters)
    total = 0
    if supporters
      supporters.each do |supporter|
        total += supporter.donated_amount
      end
    end
    total
  end
end
