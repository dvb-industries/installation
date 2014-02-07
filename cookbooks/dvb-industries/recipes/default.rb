recipes = %w{emacs}

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end
