class River

attr_reader(:name)


def initialize(name)

  @name = name
  @fish_collection = []

end

def return_fish
  @fish_collection
end



end
