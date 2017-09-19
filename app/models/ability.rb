class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :manage, List, user_id: user.id
      can :manage, Task do |task|
        task.list.user_id == user.id
      end
    end
  end
end

