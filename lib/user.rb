class User
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  def greet
    if @age <= 12
      "私は#{@name}だよ。"
    else
      "私は#{@name}です。"
    end
  end
end
