require 'pstore'

class GiftsDatabase
  DATABASE = PStore.new("gifts.pstore")

  def self.create_record(gift_object)
    DATABASE.transaction do
      DATABASE
end
