recipes = %w{emacs i3 fish latex node}

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end
