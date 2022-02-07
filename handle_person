# Define Handle Person
class HandlePerson
  def initialize
    @people = []
  end

  def translate_answer(ans)
    %w[yes y].include?(ans)
  end

  def create_student(age, name, parent_permission)
    @people.push(Student.new(name:, age:, parent_permission: translate_answer(parent_permission.downcase)))
  end

  def create_teacher(age, name, specialization)
    @people.push(Teacher.new(name:, age:, specialization:))
  end

  def display_people
    if @people.empty?
      puts 'no one is registered in the library'
    else
      @people.each_with_index { |person, index| puts "#{index} #{person}" }
    end
  end

  def get_id_from_index(index)
    @people[index].id
  end

  def get_person_from_index(index)
    @people[index]
  end
end
