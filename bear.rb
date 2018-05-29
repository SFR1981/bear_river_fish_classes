class Bear

attr_reader(:name, :type)
def initialize(name, type)

  @name = name
  @type = type
  @stomach_contents = []




end


def stomach_contains
  @stomach_contents
end


def take_a_fish(river)
  food = river.return_fish.pop()
  @stomach_contents << food
  

end

end
