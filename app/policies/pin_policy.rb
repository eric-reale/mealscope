class PinPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
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
    @record.collection.user == @user || @user.admin
  end

  def destroy?
    @record.collection.user == @user || @user.admin
  end
end
