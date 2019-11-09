class MealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def new?
    create?
  end

  def show?
    true
  end

  def edit?
    update?
  end

  def update?
    # resolve to some boolean
    @record.user == @user || @user.admin
  end

  def destroy?
    # resolve to some boolean
    @record.user == @user || @user.admin
  end
end
