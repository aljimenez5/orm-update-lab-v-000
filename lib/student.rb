require_relative "../config/environment.rb"
# Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
class Student
  
  attr_accessor :name, :grade
  attr_reader :id 
  
  def initialize(id = nil, name, grade)
    @name = name
    @grade = grade
    @id = id 
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT);
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    DB[:conn].execute("DROP TABLE students")
  end
  
  def save

  


end
