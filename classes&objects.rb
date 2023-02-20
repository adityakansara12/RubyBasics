class Student
  @@total_students=0
  def initialize(id,name,mobile)
    @id=id
    @name = name
    @mobile=mobile
    @@total_students = @@total_students.to_i + 1
  end

  def get_total_students
    @@total_students
  end

  def get_id
    @id
  end

  def get_name
    @name
  end

  def get_mobile
    @mobile
  end
end

student1 = Student.new(1, "Aditya", 1234567890)
student2 = Student.new(2, "Aditya1", 1234567890)
student3 = Student.new(3, "Aditya2", 1234567890)
student4 = Student.new(4, "Aditya3", 1234567890)
student5 = Student.new(5, "Aditya4", 1234567890)



p student1.get_id
p student1.get_name
p student1.get_mobile
p student1.get_total_students
