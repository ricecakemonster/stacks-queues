require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/job-simulation'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Terrible Company" do
  it "Creating a Stack list for workers" do
    job = JobSimulation.new(5, 10)
    job.workers.class.must_equal Stack
  end

  it "Creating a Queue list for a waiting list" do
    job = JobSimulation.new(5, 10)
    job.waiting.class.must_equal Queue
  end

  it "the number of wokers should eaqual to the number of the jobs available" do
    job = JobSimulation.new(5, 10)
    job.workers.size.must_equal 5
  end

end
