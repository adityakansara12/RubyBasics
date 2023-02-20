=begin
Protected methods:  Object of a class can access protected methods by public methods. (Object1 can access Object2's protected methods inside class definition)
                    Protected methods can not be used without public method of the same class.

Private methods:    An object can access its private method using public method outside the class.
                    Object of a class can access private methods by public methods. (Object1 can not access Object2's private methods inside class definition)
=end
class Car

  def initialize(name)
    @name=name
  end

  def public_method
    puts "Public method of #{@name}"
  end

  # def access_protected(obj)
  #   obj.protected_method
  # end

  def access_protected
    protected_method
  end

  def access_private()
    private_method
  end

  protected

  def protected_method
    puts "Protected method of #{@name}"
  end

  private

  def private_method
    puts "Private method of #{@name}"
  end
end

obj1 = Car.new("Object1")
obj2 = Car.new("Object2")

obj1.public_method
obj2.public_method

# obj1.access_protected(obj1)
# obj1.access_protected(obj2)
# obj2.access_protected(obj1)
# obj2.access_protected(obj2)
obj1.access_protected
obj2.access_protected

obj1.access_private()
obj2.access_private()
