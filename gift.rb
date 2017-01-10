require 'yaml/store'

class Gift
  attr_reader :name
  attr_accessor :current_total

  def initialize(name, required_total)
    @name = name
    @required_total = required_total
    @current_total = 0
    @store = YAML::Store.new('_data/gift-store.yml')
  end

  # Change value in the database for the given k:v pair
  def update_total(amount)
    current_total += amount
    @store.transaction do
      @store[:current_total] = current_total
      @store[:updated_at] = Time.now
    end
  end

  def authorize_transaction
  end
end
