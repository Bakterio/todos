class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks

  def tasks_done_percentage
    tasks_done = 0
    for task in self.tasks
      if task.done == true
        tasks_done += 1
      end
    end
    tasks_done
  end
end
