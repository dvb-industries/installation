basis = %w{emacs i3 fish caps_lock}
mathematics = %w{latex geogebra coq proofgeneral}
languages = %w{node haskell prolog scheme java}

recipes = [basis, mathematics, languages]

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end
