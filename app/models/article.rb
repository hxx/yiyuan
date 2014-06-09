class Article < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
            length: { 
              minimum: 5,
              too_short: "must have at least %{count} words" 
            }
  after_initialize do |article|
    puts "You have initialize an object!"
  end

  after_find do |article|
    puts "You have found an object!"
  end

  after_touch :after_touch_message

  private
    def after_touch_message
      puts "You have touched an object again!"
    end
end
