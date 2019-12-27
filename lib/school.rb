# code here!
describe 'school' do
  school = School.new("Bayside Highschool")
  describe "add_student" do
  school.add_student("Zach Morris", 9)
  school.roster 