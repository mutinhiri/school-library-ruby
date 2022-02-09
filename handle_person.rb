class HandlePerson
  attr_reader :people

  def initialize
    @people = []
  end

  def read_people_json
    file = 'people.json'
    if File.exist? file
      JSON.parse(File.read(file)).map do |p|
        if p['specialization'].nil?
          create_student(p['id'], p['age'], p['name'], p['pp'].to_s)
        else
          create_teacher(p['id'], p['age'], p['name'], p['specialization'])
        end
      end
    else
      []
    end
  end

  def translate_answer(ans)
    %w[yes y].include?(ans)
  end

  def create_student(id, age, name, pp)
    @people.push(Student.new(id:, name:, age:, parent_permission: translate_answer(pp.downcase)))
  end

  def create_teacher(id, age, name, specialization)
    @people.push(Teacher.new(id:, name:, age:, specialization:))
  end

  def list_people
    if @people.empty?
      puts 'There is no one registered in the library'
    else
      @people.each { |person| puts person }
    end
  end

  def list_people_with_index
    if @people.empty?
      puts 'There is no one registered in the library'
    else
      @people.each_with_index { |person, index| puts "#{index}) #{person}" }
    end
  end

  def get_id_from_index(index)
    @people[index].id
  end

  def get_person_from_index(index)
    @people[index]
  end
end
