class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(digit)
    if(digit < 10)
      digit = "0#{digit}"
    end
    digit.to_s
  end

  def time_string
    minutes = 0
    hours = 0
    seconds = self.seconds
    if seconds > 60
      remaining_seconds = seconds % 60
      minutes = ( seconds - remaining_seconds ) / 60
      seconds = remaining_seconds
    end

    if minutes > 60
      remaining_minutes = minutes % 60
      hours = (minutes - remaining_minutes) / 60
      minutes = remaining_minutes
    end
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

end
