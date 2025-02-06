# frozen_string_literal: true

require_relative 'pizza'

# Interface abstrata para construção de pizzas
class PizzaBuilder
  attr_accessor :size, :cheese, :pepperoni, :mushrooms

  def initialize(size)
    @size = size
  end

  def add_cheese
    raise NotImplementedError
  end

  def add_pepperoni
    raise NotImplementedError
  end

  def add_mushrooms
    raise NotImplementedError
  end

  def build
    raise NotImplementedError
  end
end

# Implementação concreta do builder para pizzas tradicionais
class TraditionalPizzaBuilder < PizzaBuilder
  def initialize(size)
    super(size)
    reset
  end

  def reset
    @cheese = false
    @pepperoni = false
    @mushrooms = false
  end

  def add_cheese
    @cheese = true
    self
  end

  def add_pepperoni
    @pepperoni = true
    self
  end

  def add_mushrooms
    @mushrooms = true
    self
  end

  def build
    pizza = Pizza.new(self)
    reset
    pizza
  end
end

# Diretor que coordena a construção de diferentes tipos de pizza
class Pizzaiolo 
  def initialize(builder)
    @builder = builder
  end

  def fazer_margherita
    @builder.add_cheese.build
  end

  def make_margherita
    @builder
      .add_cheese
      .build
  end

  def make_pepperoni
    @builder
      .add_cheese
      .add_pepperoni
      .build
  end
end
