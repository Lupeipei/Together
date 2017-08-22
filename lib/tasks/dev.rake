namespace :dev do
  desc "TODO"
  task fake_jobs: :environment do
    Job.delete_all

    50.times do |i|
      Job.create!(:title => Faker::Job.title, :description => Faker::Job.key_skill,
                  :wage_lower_bound => rand(50..100)*100, :wage_upper_bound => rand(10..50)*1000,
                  :city => Faker::Address.city , :company => Faker::Company.name,
                  :contact_email => Faker::Internet.email, :is_hidden => [true, false].sample,
                  :created_at => Time.now - rand(10).days - rand(24).hours)
    end
  end

end
