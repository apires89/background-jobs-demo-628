class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_commit :update_job_async, on: [:create,:update]

  private

  def update_job_async
    #self beeing the User instance
    UpdateUserJob.perform_later(self)
  end

end
