module VariationsHelper
  def colors_for_select(product_id)
    Variation.where(product_id: product_id).map{|p| [p.color.description, p.color_id]}
  end

  def variations_for_select(product_id)
    Variation.where(product_id: product_id).map{|p| ["#{p.size.description} - #{p.color.description}", p.size_id]}
  end
end
