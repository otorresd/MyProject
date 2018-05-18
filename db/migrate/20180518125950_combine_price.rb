class CombinePrice < ActiveRecord::Migration[5.0]
  def up
    LineItem.all.each do |line_item|
      line_item.update_attribute :price, line_item.product.price
      end
  end
end
