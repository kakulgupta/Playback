class Vcr
  def initialize(value)
  	@value = value
  	@play = []
  end
  def strip_value(char)
   new_str = ""
   @value.each_byte do |byte|
      new_str << byte.chr unless byte.chr == char
    end
      @play.unshift(@value)
      @value
  end

  def length
    @play.unshift(@value.length)
    @value.length
  end

  def playback
    @play
  end
end
  t = Vcr.new("hello")
  t.strip_value(' ')
  t.length
  puts t.playback