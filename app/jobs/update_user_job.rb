class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Calling ClearBit API on #{user.email}"
    # Do something later
    sleep 2
    puts "Done!"
  end
end
