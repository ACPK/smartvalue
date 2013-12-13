class Company < ActiveRecord::Base

  def dcf_intrinsic_value
    discount_rate = 0.08

    present_value_of_future_cash_flows = 0
    for year in (0..10)
      present_value_of_future_cash_flows += self.cash_flow_per_share*1.05 / (1 + discount_rate)**year
    end

    return self.cash_per_share + present_value_of_future_cash_flows
  end

  def discount
    discount = ( (self.stock_price - self.dcf_intrinsic_value) / self.dcf_intrinsic_value )*100
    return discount
  end

end


