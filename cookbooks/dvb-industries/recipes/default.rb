recipes = []

recipes.flatten.each do |a_recipe|
  include a_recipe
end
