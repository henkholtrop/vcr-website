class Ability
  include CanCan::Ability

  def initialize(current_user)
    can :read, :all
    current_user ||= User.new
    if current_user.role == "admin"
      can :manage, :all
    elsif current_user.role == "author"
      can :manage, :article
      can :read, :all
    elsif current_user.role == "teammanager"
      can :manage, :team
      can :manage, :member
      can :read, :all
    end
  end
end