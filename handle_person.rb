# Define Handle Person
class HandlePerson
  def initialize
    @people = []
  end

  def translate_answer(ans)
    %w[yes y].include?(ans)
  end

  def create_student(age, name, pp)
    @people.push(Student.new(name:, age:, parent_permission: translate_answer(pp.downcase)))
  end

  def create_teacher(age, name, specialization)
    @people.push(Teacher.new(name: name, age: age, specialization: specialization))
  end

  def list_people
    if @people.empty?
      puts 'No one is registered in the library'
    else
      @people.each { |person | puts  person }
    end
  end

  def list_people_with_index
    if @people.empty?
      puts "There is no one registered in the library"
    else
      @people.each_with_index { |person, index| puts "#{index}) #{person}"}
    end
  end

  def get_id_from_index(index)
    @people[index].id
  end

  def get_person_from_index(index)
    @people[index]
  end
end
