basis = %w{emacs i3 fish caps_lock}
mathematics = %w{latex geogebra coq proofgeneral}
languages = %w{node haskell prolog scheme java leiningen}
tools = %w{xautolock imagemagick eclipse}

recipes = [basis, mathematics, languages, tools]

recipes.flatten.each do |a_recipe|
  depends a_recipe
end

