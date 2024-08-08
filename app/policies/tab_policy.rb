class TabPolicy < ApplicationPolicy

  def welcome?
    # anybody is welcome to view the landing page
    true
  end

  def index?
    # only the current user can see all the tabs created by them
    user == user
  end

  def show?
    # the user can view the tabs they have created
    user == record.user
  end

  def create?
    # anybody can create tabs 
    index?
  end

  def new?
    create?
  end

  def update?
    # only the owner of the tab can update
    show?
  end

  def edit?
    update?
  end

  def destroy?
    # only the owner of the tab can destory
    show?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end
