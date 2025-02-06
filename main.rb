# frozen_string_literal: true

require_relative 'lib/pizza_builder'

builder_big = TraditionalPizzaBuilder.new('Grande')
pizzaiolo = Pizzaiolo.new(builder_big)

margherita = pizzaiolo.fazer_margherita
pepperoni = pizzaiolo.make_pepperoni 

puts "Margherita: #{margherita}"
puts "Pepperoni: #{pepperoni}"
