recipes = %w{emacs i3 fish latex}

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end
