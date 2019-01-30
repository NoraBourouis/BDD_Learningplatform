require 'faker'
# On crée 10 cours
10.times do
  lecture = Lecture.create!(title: Faker::GameOfThrones.house)
end
# On crée 10 élèves qu'on associe à un cours et à un cours seulement
10.times do
  student = Student.create!(name: Faker::GameOfThrones.character, lecture_id: rand(1..11))
end
