require "./lab2.rb"

cat_names = ["Luna", "Harry","Garfield"]
bird_names = ["Tweety", "Barnacle","Susie"]

100.times do |n|
  cat = Cat.new(cat_names.sample)
  cat.catch(Bird.new(bird_names.sample))
end
