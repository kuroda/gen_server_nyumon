class K
  def initialize
    @count = 0
  end

  def increment
    @count = @count + 1
  end

  def count
    @count
  end
end

k = K.new
k.increment
k.increment
k.increment

p k.count
