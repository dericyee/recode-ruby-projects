class Bootcamp
    attr_accessor :name, :slogan, :student_capacity, :teachers, :students
# PART 1
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{|k,v| k[v] = [] }
  end

  def hire(teacher)
    @teachers.push(teacher)
  end

  def enroll(student)
    if @students.count < @student_capacity 
        @students.push(student)
        return true
    else
        # @students.count == @student_capacity
        return false
    end
  end

  def enrolled?(student)
    if @students.include?(student)
        return true
    end
        return false
    end

# PART 2
    def student_to_teacher_ratio
        students_count = @students.count
        teacher_count = @teachers.count
        return (students_count/teacher_count.to_f).floor
    end

    def add_grade(student,grade)
        if enrolled?(student)
            @grades[student] << grade
            return true
        end
            return false
    end

    def num_grades(student)
        return @grades[student].count
    end

    def average_grade(student)
        if !enrolled?(student) || @grades[student] == [] 
            return nil
        end 
        return @grades[student].sum/@grades[student].count
    end
end

aaa = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)
# aaa.hire("Joel")
# aaa.hire("Taha")
# aaa.hire("A")
# aaa.hire("B")
# p aaa.teachers
# aaa.enroll("Deric")
# aaa.enroll("Deric2")
# aaa.enroll("Deric3")
# aaa.enroll("Deric4")
# aaa.enroll("Deric5")
# aaa.enroll("Deric6")
# aaa.enroll("Deric7")
# p aaa.students
# p aaa.enrolled?("Deric8")
# p aaa.student_to_teacher_ratio
# p aaa.add_grade("Deric",90)
# p aaa.add_grade("Deric",80)
# p aaa.add_grade("Deric",70)
# p aaa.average_grade("Deric")