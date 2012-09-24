require "prime"
class Jojolion < ActiveRecord::Base
  # attr_accessible :title, :body
  def self.jojo_calc
    1.upto 100 do |num|
      p num.prime? ? "JOJO!" : num
    end
  end
end
