class Ability
  include CanCan::Ability

  def initialize(current_user)
    can :read, :all
    current_user ||= User.new
    if current_user.role == "admin"
      can :manage, :all
    end
  end
end