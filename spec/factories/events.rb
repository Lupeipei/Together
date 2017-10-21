FactoryBot.define do
  factory :event do
    title "music"
    logo {File.new("#{Rails.root}/app/assets/images/music/201.jpg")}
    status "processing"
    description "here we go"
    start_time 10.days.from_now
    end_time 11.days.from_now
    province "440000"
    city "440100"
    address "广东广州海珠区昌岗中路211-2号信和苑2栋1502"
    sponsor "追梦音乐工作室"
    limited_num 300
  end
end
