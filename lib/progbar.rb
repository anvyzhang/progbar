class Array
  def prog_each(&block) 
    bar_length = (`tput cols` || 80).to_i - 30
    time_now = Time.now
    total = self.count
    last_flush = 0
    flush_time = 1
    self.each_with_index{|element, x|
      cur = (x + 1) * 100 / total
      time_left = (((Time.now - time_now) * (100 - cur)).to_f / cur).ceil
      if (Time.now - last_flush).to_i >= flush_time or time_left < 1
        time_left_graceful = Time.at(time_left).utc.strftime("%H:%M:%S")
        if time_left > 86400
          time_left_graceful = res.split(":")
          time_left_graceful[0] = (time_left_graceful[0].to_i + days * 24).to_s
          time_left_graceful = time_left_graceful.join(":")
        end
        print "\r"
        cur_len = (bar_length * (x + 1)) / total
        print "[" << (["#"] * cur_len).join << (["-"] * (bar_length - cur_len)).join << "] #{cur}% [#{time_left_graceful} left]"
        last_flush = Time.now
      end
      block.call element if block
    }
    puts "\n"
    "Done."
  end
end
