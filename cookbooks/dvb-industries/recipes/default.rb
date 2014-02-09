basis = %{emacs i3 fish}
mathematics = %w{latex geogebra coq proofgeneral}
languages = %w{node haskell prolog scheme}

recipes = [basis, mathematics, languages]

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end
