class Ability
 
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
    unless user.nil?
	    if user.role? :admin
	    	can :manage, :all
	    	can :access, :rails_admin   # grant access to rails_admin
				can :dashboard              # grant access to the dashboard
	      #can :update, User do |user2|
	      #user2.try(:id) == user.id
	      #end    
	    elsif user.role? :user
	      can :manage, [Establecimiento]
	    end    
    end    
    #can :create, [Persona]
  end
end