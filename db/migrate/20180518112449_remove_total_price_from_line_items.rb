class RemoveTotalPriceFromLineItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :total_price, :decimal
  end
end
