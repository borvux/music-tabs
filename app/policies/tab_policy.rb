class TabPolicy < ApplicationPolicy
  def welcome?
    true
  end

  def index?
    true
  end

  def show?
    user == record.user
  end

  def create?
    index?
  end

  def new?
    create?
  end

  def update?
    show?
  end

  def edit?
    update?
  end

  def destroy?
    show?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end
