require_relative './Stack.rb'
require_relative './Queue.rb'

class JobSimulation
  attr_reader :workers, :waiting, :roll

  def initialize (jobs_available, job_seekers)
    @workers = Stack.new
    @waiting = Queue.new
    job_seekers.times do |num|
      @waiting.enqueue("wokrer ##{num + 1}")
    end

    jobs_available.times do
    @workers.push(@waiting.front)
    @waiting.dequeue
    end

    # print "Waiting : #{@waiting}\n"
    # print "Workers : #{@workers}"


  end

  def cycle
    @roll = rand(6) + 1

    @roll.times do
      @waiting.enqueue(@workers.top)
      @workers.pop
    end

    @roll.times do
      @workers.push(@waiting.front)
      @waiting.dequeue
    end

        print "dice number : #{@roll}\n"

  end

end

# Allows us to run our code and see what's happening:
sim = JobSimulation.new(6,10)
puts "------------------------------"
puts "Before the simulation starts"
puts "Employed: #{sim.workers}"
puts "Waitlist: #{sim.waiting}"
puts "------------------------------"
print "<enter to cycle>\n"

count = 0
until gets.chomp != ""
  puts "-------Cycle #{count+=1}-------"
  sim.cycle
  puts "Employed: #{sim.workers}"
  puts "Waitlist: #{sim.waiting}"
end

# job = JobSimulation.new(5,10)
# puts job.cycle
# puts job.roll
