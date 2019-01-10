class K
  def initialize
    @count = 0
    @done = false
  end

  def increment
    unless @done
      @count = @count + 1

      putc "."

      @done = true
    end
  end

  def count
    @count
  end
end

k = K.new

threads = 5.times.map do
  Thread.new do
    k.increment
  end
end

threads.each(&:join)

puts k.count
