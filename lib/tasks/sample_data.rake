require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    50.times do |n|
      name  = Faker::Name.name
      email = Faker::Internet.email
      gender_identity = "male"
      school = Faker::Company.name
      this_is_my_first_hackathon = (1 == rand(2) ? true : false)
      i_will_not_be_traveling_from_my_school = (1 == rand(2) ? true : false)
      i_will_be_traveling_from = Faker::Address.city
      resume = Faker::Name.name
      github = Faker::Name.name
      dribbble = Faker::Name.name
      linkedin = Faker::Name.name
      personal_site = Faker::Lorem.word
      free_response = Faker::Lorem.sentence
      Application.create!(:name => name,
                    :email => email,
                    :gender_identity => gender_identity,
                    :school => school,
                    :this_is_my_first_hackathon => this_is_my_first_hackathon,
                    :i_will_not_be_traveling_from_my_school => i_will_not_be_traveling_from_my_school,
                    :i_will_be_traveling_from => i_will_be_traveling_from,
                    :resume => resume,
                    :github => github,
                    :dribbble => dribbble,
                    :linkedin => linkedin,
                    :personal_site => personal_site,
                    :free_response => free_response)
    end
  end
end