class FakeJob < ApplicationJob
  queue_as :default

  def perform
    puts "Im going to work to do a job"
    sleep 2
    puts "I've completed my fake job :)"
  end
end
