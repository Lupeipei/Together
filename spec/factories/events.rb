FactoryBot.define do

  factory :user do
    email {Faker::Internet.email}
    password "password"
    password_confirmation {password}
    username "foo"
    avatar {File.new("#{Rails.root}/spec/factories/p1.jpg")}
  end

  factory :category do
    # association :event
    id 1
    name "音乐"
  end

  factory :event do
    title "music"
    logo {File.new("#{Rails.root}/spec/factories/p1.jpg")}
    status "processing"
    description "This is for test"
    start_time 10.days.from_now
    end_time 11.days.from_now
    province "440000"
    city "440100"
    address "广东广州海珠区昌岗中路211-2号信和苑2栋1502"
    sponsor "追梦音乐工作室"
    limited_num 300
    category_id 1
  end
end
