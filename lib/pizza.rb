# frozen_string_literal: true

# Class that represents a Pizza with configurable toppings
class Pizza
  attr_reader :size, :cheese, :pepperoni, :mushrooms

  def initialize(builder)
    @size = builder.size
    @cheese = builder.cheese
    @pepperoni = builder.pepperoni
    @mushrooms = builder.mushrooms
  end

  def to_s
    toppings = []
    toppings << 'queijo' if cheese
    toppings << 'pepperoni' if pepperoni
    toppings << 'cogumelos' if mushrooms

    toppings_list = toppings.empty? ? 'sem adicionais' : toppings.join(', ')
    "Pizza #{size} com: #{toppings_list}"
  end
end
