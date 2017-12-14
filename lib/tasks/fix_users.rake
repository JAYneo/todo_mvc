desc "Fix Users"
task :fix_users => :environment do
  User.all.each do |user|
    user.firstname = "Anoni" if user.firstname.blank?
    user.lastname = "Mouse" if user.lastname.blank?
    user.save
  end
end
