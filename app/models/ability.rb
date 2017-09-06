class Ability
	include CanCan::Ability

	def initialize(user)
		if user
			can :manage, Lists, user_id: user.id
			can :manage, Task do |task|
				task.project.user_id == user.id
			end
		end
	end
end

