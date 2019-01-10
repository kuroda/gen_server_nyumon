class K
  def initialize
    @count = 0
    @done = false
  end

  def increment
    unless @done
      @count = @count + 1
      @done = true
    end
  end

  def count
    @count
  end
end

k = K.new

5.times do
  k.increment
end

puts k.count
