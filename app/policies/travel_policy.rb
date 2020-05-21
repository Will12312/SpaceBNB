class TravelPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.geocoded
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.organiser == user
  end

  def destroy?
    record.organiser == user
  end

end
