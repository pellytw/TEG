class Ability
<<<<<<< HEAD
 
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
	      can :create, [Persona]
	      can :update, [Persona]
	      can :read, [Persona]
	      can :read, [Establecimiento]
		  end
		end
  end    
=======

 include CanCan::Ability

 def initialize(user)
   user ||= User.new # guest user
   unless user.nil?
           if user.confirmed?
	           if user.role? :admin
	                   can :manage, :all
	                   can :access, :rails_admin   # grant access to rails_admin
	                               can :dashboard              # grant access to the dashboard
	             #can :update, User do |user2|
	             #user2.try(:id) == user.id
	             #end    
	           elsif user.role? :user
	             can :create, [Persona]
	             can :update, [Persona]
	             can :read, [Persona]
	             can :read, [Establecimiento]
	           end
           else
           		raise CanCan::AccessDenied.new("Debe registrar su mail!")	
           end
   end    
 end
>>>>>>> ab0c39d2d446989ef44462fa3b343279f3423b55
end