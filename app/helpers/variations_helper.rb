module VariationsHelper
  

  def variations_for_select(product_id)
    # DONE only return variations with stock.
    Variation.where(['stock > ? and product_id = ?', 0, product_id ]).map{|p| ["#{p.size.description} - #{p.color.description}", p.size_id]}
  end
end

# product_id: product_id, 