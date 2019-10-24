class SimpleBenchmarker
  def run(description, &block)
    start_time = Time.now
    block.call description
    end_time = Time.now
    elapsed = end_time - start_time
    puts "elapsed time: #{elapsed}"
    puts "#{description} results"
  end
end

benchmark = SimpleBenchmarker.new

benchmark.run "sleep a random amount of time" do
  5.times do
    print "."
    sleep(rand(0.1..1.0))
  end
end

