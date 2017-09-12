# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin
User.delete_all

u = User.new

u.email = "admin@123.com"
u.username = "Admin"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "Admin is created"

# Users

users = []
10.times do |i|
  users << User.create!(:email => Faker::Internet.email, :password => "123456", :username => Faker::Name.name)
end

puts "users are created"

# Category部分
Category.delete_all

Category.create!(name: "音乐")
Category.create!(name: "户外")
Category.create!(name: "约厨")
Category.create!(name: "交友")
Category.create!(name: "读书")
Category.create!(name: "游戏")

# Event
Event.delete_all
# 音乐1

Event.create!(
  id: 1,
  category_id: 1,
  user_id: users.sample.id,
  title: "空体丨周五晚独立音乐分享会",
  description: "如果要把世界填充满的话，用音乐和食物，就够了。<br>
  鼓手，吉他手，键盘手，民谣歌手，原创音乐人……<br>
  来这里，听他们的梦想与坚持。",
  city: "深圳",
  address: "广东深圳空体新媒体实验室虚拟大学园R3-A栋1楼",
  sponsor: "空体",
  limited_num: 300,
  start_time: Time.local(2017, 10, 25, 19, 00),
  end_time: Time.local(2017, 10, 25, 22, 00) ,
  status: ["preparing","processing"].sample,
  # logo: open("https://ws2.sinaimg.cn/large/006tKfTcly1fjfyacf8arj31kw16o1kx.jpg")
  # logo: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tKfTcly1fjfyacf8arj31kw16o1kx.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/music/103.jpg")

)


Event.create!(
  id: 2,
  category_id: 1,
  user_id: users.sample.id,
  title: "广州追梦#ukulele#周末免费公开课",
  description: "【只要2小时】从零基础到自弹自唱—达成， <br>
                认识更多有趣的朋友， <br>
                感受尤克里里的独特魅力， <br>
                收获更多不一样的欢乐体验。",
  city: "广州",
  address: "广东广州海珠区昌岗中路211-2号信和苑2栋1502",
  sponsor: "追梦音乐工作室",
  limited_num: 300,
  start_time: Time.local(2017, 10, 15, 19, 00),
  end_time: Time.local(2017, 10, 15, 22, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tKfTcly1fjfyagis5pj30rs0kugoz.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/music/201.jpg")
)

# 户外2
# Event.create!(
#   id: 3,
#   category_id: 2,
#   user_id: users.sample.id,
#   title: "重逢箭扣长城，东线穿越",
#   description: "活动线路：渔场—箭扣—小布达拉—正北楼—牛角边—慕田峪—营北沟；<br>
#                 活动强度：全程8KM左右，上升下降均约900米，<br>
#                 集合时间：惠新西街北口B口，早7点20分",
#   city: "北京",
#   address: "北京怀柔箭扣长城",
#   sponsor: "东岸户外",
#   limited_num: 100,
#   start_time: Time.local(2017, 11, 15, 07, 00),
#   end_time: Time.local(2017, 11, 15, 12, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNc79gy1fj9lhd50vqj30ku0dwgpb.jpg")
# )
#
#
# Event.create!(
#   id: 4,
#   category_id: 2,
#   user_id: users.sample.id,
#   title: "GDPMS东西冲露营+穿越 | 徒步中国最美海岸线",
#   description: "东西冲海岸线被《国家地理杂志》评为中国最美的十大徒路线之一。东西冲海岸线是深圳最美丽、最经典的海岸线徒步线路：屏山傍海，山岳纵横，海岸线漫长，沙滩、岛屿、礁石、海蚀岩、洞、桥、柱等海积海蚀地貌发育齐全，给你完美的穿越体验！",
#   city: "广州",
#   address: "广东广州南澳镇西冲村",
#   sponsor: "小来子",
#   limited_num: 50,
#   start_time: Time.local(2017, 10, 15, 19, 00),
#   end_time: Time.local(2017, 10, 15, 22, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNc79gy1fj9lhciprpj30rs0g9q4f.jpg")
# )
#
# # 约厨3
#
# Event.create!(
#   id: 5,
#   category_id: 3,
#   user_id: users.sample.id,
#   title: "泡面食堂大侠召集令",
#   description: "泡面食堂大侠召集令！邀请你来亲尝为你收刮来的世界级的泡面！<br>
#                 让你来评价一下，哪一款泡面成为你的freestyel！<br>
#                 你可以是很爱吃泡面的吃货<br>
#                 游侠客帮你架起与泡面的友谊之桥<br>
#                 你也可以是很爱凑热闹的XX群众<br>
#                 游侠客【泡面食堂】最不缺的就是热闹！",
#   city: "杭州",
#   address: "浙江杭州游侠客民宿",
#   sponsor: "游侠客",
#   limited_num: 100,
#   start_time: Time.local(2017, 10, 10, 19, 00),
#   end_time: Time.local(2017, 10, 10, 22, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNc79gy1fj9li8mjq7j30rs0fn13q.jpg")
# )
#
# Event.create!(
#   id: 6,
#   category_id: 3,
#   user_id: users.sample.id,
#   title: "心灵厨房",
#   description: "唯美食与爱不可辜负,<br>
#                 而一饭一蔬，皆是爱意,<br>
#                 所以，这里是一个关于食物和心理学的课程",
#   city: "西安",
#   address: "陕西西安碑林区长安北路皇族雅苑别墅",
#   sponsor: "卷毛银时",
#   limited_num: 30,
#   start_time: Time.local(2017, 11, 15, 10, 00),
#   end_time: Time.local(2017, 11, 15, 12, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79gy1fj9li8zya9j30k00d9407.jpg")
# )
#
# # 交友4
#
# Event.create!(
#   id: 7,
#   category_id: 4,
#   user_id: users.sample.id,
#   title: "【无意义大赛】全宇宙最无聊的比赛，太扯淡了!",
#   description: "赛事介绍：<br>
#   1、捏泡泡大赛：捏泡泡才能满足的叫手感；<br>
#    2、给陌生人打电话：谁聊最长谁赢啊; <br>
#    3、吐豆子大赛：听说射程好的都在这……<br>
#    关于这样的扯淡游戏，我们还准备了十几个，想不想来嘛？",
#   city: "杭州",
#   address: "浙江杭州运河大兜路146号游侠客民宿",
#   sponsor: "游侠客",
#   limited_num: 60,
#   start_time: Time.local(2017, 10, 15, 19, 00),
#   end_time: Time.local(2017, 10, 15, 22, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNc79gy1fj9ljmpheqj30f108648v.jpg")
# )
#
# Event.create!(
#   id: 8,
#   category_id: 4,
#   user_id: users.sample.id,
#   title: "第二届ACG国际艺术展：展会作品大招募",
#   description: "我们不仅是一个静态艺术展<br>
#                 更是一个贩卖视觉艺术的超级市场<br>
#                 我们不仅是一个创意市集<br>
#                 更是一个视觉艺术大party<br>
#                 我们不仅有来自国外的艺术表演节目<br>
#                 还有来自名校优秀学生的服装秀<br>
#                 我们不仅有国内外大师云集的艺术论坛交流<br>
#                 还有集万千糕点、酒水于一身的交流酒会<br>
#                 欢迎各种视觉噪音<br>
#                 让视觉也躁起来",
#   city: "深圳",
#   address: "深圳南山大冲国际中心5号楼6楼CD单元",
#   sponsor: "ACG国际艺术教育",
#   limited_num: 30,
#   start_time: Time.local(2017, 12, 15, 19, 00),
#   end_time: Time.local(2017, 12, 15, 20, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNc79gy1fj9lvg6cifj30xc0m8n37.jpg")
# )
#
# # 读书5
#
# Event.create!(
#   id: 9,
#   category_id: 5,
#   user_id: users.sample.id,
#   title: "光阴读书会 | 朗读场",
#   description: "朗读，是人与生俱来的能力。无论乡关何处，情相通。<br>
#                 朗读，是古已有之的音乐。快慢行柔、抑扬顿挫，皆成乐章。<br>
#                 关闭其他感官，耳朵借我，感受声波经空气带来的按摩。<br>
#                 放下一切评判，把心打开，体会平凡文字的撩拨。<br>
#                 带上喜欢的文字和你的故事，沉浸在9月的光阴里、情感的交融中。",
#   city: "上海",
#   address: "上海静安芷江西路151号 文化中心 4楼多功能厅",
#   sponsor: "书虫部落",
#   limited_num: 50,
#   start_time: Time.local(2017, 11, 11, 19, 00),
#   end_time: Time.local(2017, 11, 11, 21, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNc79ly1fj9lvxqgqej31kw0whtfy.jpg")
# )
#
# # 游戏6
#
# Event.create!(
#   id: 10,
#   category_id: 6,
#   user_id: users.sample.id,
#   title: "周末拒绝宅，一起狼人杀吧",
#   description: "一局狼人杀会让你爱上桌游, 也会使你深刻体会快乐真的会让时间变得匆匆<br>
#   加入我们，一起玩耍吧",
#   city: "北京",
#   address: "北京海淀区避风塘",
#   sponsor: "殽赦",
#   limited_num: 15,
#   start_time: Time.local(2017, 10, 10, 14, 00),
#   end_time: Time.local(2017, 10, 10, 18, 00) ,
#   status: ["preparing","processing"].sample,
#   logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79ly1fj9lweuvsfj30fe083gmf.jpg")
# )
#
# puts "Events are created"
