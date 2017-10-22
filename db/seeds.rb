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

u.id = 1
u.email = "admin@123.com"
u.username = "Admin"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "Admin is created"

# Users

users = []
150.times do |i|
  users << User.create!(:email => Faker::Internet.email, :password => "123456", :username => Faker::Name.name)
end

puts "users are created"

# Category部分
Category.delete_all

Category.create!(id:1, name: "音乐")
Category.create!(id:2, name: "户外")
Category.create!(id:3, name: "约厨")
Category.create!(id:4, name: "交友")
Category.create!(id:5, name: "读书")
Category.create!(id:6, name: "游戏")

# City部分
City.delete_all

City.create!(city: "110000")
City.create!(city: "310000")
City.create!(city: "440100")
City.create!(city: "440300")
City.create!(city: "330100")
City.create!(city: "510100")

# Event
Event.delete_all

events = []

# 音乐1

events << Event.create!(
  id: 1,
  category_id: 1,
  user_id: users.sample.id,
  title: "空体丨周五晚独立音乐分享会",
  description: "如果要把世界填充满的话，用音乐和食物，就够了。<br>
  鼓手，吉他手，键盘手，民谣歌手，原创音乐人……<br>
  来这里，听他们的梦想与坚持。<br>
  【本期音乐人介绍】<br>
  第一组嘉宾：刘潜<br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79ly1fjx56oifbzj30hs0bvmxd.jpg\"><br>
  独立音乐人/摄影师/旅行家/程序员/公务员…我们叫他：斜杠青年。<br>
  一年时间游历了10个国家，50座城市，100个地域，我们叫他：旅行先生。<br>
  他是胡子大叔-刘潜。<br>
  <br>
  第二位嘉宾：高宇婧<br>
  <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79ly1fjx56o5964j30rs0iidh0.jpg\"><br>
  高个子宇宙女青年，她向我们介绍自己时说道，高瘦<br>
  她的故事关于城市，关于生活点滴，她说，音乐给了她发现世界的另一双眼睛。<br>
  对于音乐，他们说：<br>
  每个人都是一个独立的个体，我们一直在想，什么样的形式，才能完美的表达每一个独立的灵魂和生活？<br>
  音乐给了我们答案，不论未来我们如何改变，始终会坚持全力以赴的去演绎好每一个音符。<br>
  ",
  province: "440000",
  city: "440300",
  address: "广东深圳空体新媒体实验室虚拟大学园R3-A栋1楼",
  sponsor: "空体",
  limited_num: 300,
  start_time: Time.local(2017, 11, 25, 19, 00),
  end_time: Time.local(2017, 11, 25, 22, 00) ,
  status: ["preparing","processing"].sample,
  # logo: open("https://ws2.sinaimg.cn/large/006tKfTcly1fjfyacf8arj31kw16o1kx.jpg")
  # logo: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tKfTcly1fjfyacf8arj31kw16o1kx.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/music/103.jpg")

)


events << Event.create!(
  id: 2,
  category_id: 1,
  user_id: users.sample.id,
  title: "广州追梦#ukulele#周末公开课",
  description: "【只要2小时】从零基础到自弹自唱—达成， <br>
                认识更多有趣的朋友， <br>
                感受尤克里里的独特魅力， <br>
                收获更多不一样的欢乐体验。<br>
                <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79ly1fjx60yj959j30rs0kugoz.jpg\"><br>
                <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79ly1fjx60xs3moj30rs0kun0d.jpg\"><br>
                <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79ly1fjx60x8jk1j30rs0ku3ze.jpg\"><br>",
  province: "440000",
  city: "440100",
  address: "广东广州海珠区昌岗中路211-2号信和苑2栋1502",
  sponsor: "追梦音乐工作室",
  limited_num: 300,
  start_time: Time.local(2017, 12, 05, 19, 00),
  end_time: Time.local(2017, 12, 05, 22, 00) ,
  status: ["preparing","processing"].sample,
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/music/201.jpg")
)

events << Event.create!(
  id: 3,
  category_id: 1,
  user_id: users.sample.id,
  title: "SofarSounds全球青年音乐社群",
  description: "遍布全球的秘密音乐会，邀请你在意想不到的地方听歌，这一次是北京的足球场！ <br>
                <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tKfTcly1fk0fm2u1xaj30rr0iiadn.jpg\"><br>
                这里有和你一样有趣，但以不同方式有趣着的人， <br>
                <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tKfTcly1fk0fm2hginj30rs0ij76k.jpg\"><br>
                用你意想不到的方式唱能让你微笑的歌. <br>
                <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tKfTcly1fk0fm270lmj30rs0nj0x7.jpg\"><br>",
  province: "110000",
  city: "110000",
  address: "北京昌平回龙观东大街",
  sponsor: "SofarSounds",
  limited_num: 500,
  start_time: Time.local(2017, 12, 15, 19, 00),
  end_time: Time.local(2017, 12, 15, 22, 00) ,
  status: ["preparing","processing"].sample,
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/music/304.jpeg")
)

# 户外2
events << Event.create!(
  id: 4,
  category_id: 2,
  user_id: users.sample.id,
  title: "重逢箭扣长城，东线穿越",
  description: "活动线路：渔场—箭扣—小布达拉—正北楼—牛角边—慕田峪—营北沟；<br>
                活动强度：全程8KM左右，上升下降均约900米，<br>
                集合时间：惠新西街北口B口，早7点20分,
                <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79ly1fjx68fuza5j30rs0fmwfy.jpg\"><br>
                <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tNc79ly1fjx68f90p7j30ku0dz7iu.jpg\"><br>",
  province: "110000",
  city: "110000",
  address: "北京怀柔箭扣长城",
  sponsor: "东岸户外",
  limited_num: 100,
  start_time: Time.local(2017, 11, 15, 07, 00),
  end_time: Time.local(2017, 11, 15, 12, 00) ,
  status: ["preparing","processing"].sample,
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/travel/101.jpg")
)


events << Event.create!(
  id: 5,
  category_id: 2,
  user_id: users.sample.id,
  title: "GDPMS东西冲露营+穿越 | 徒步中国最美海岸线",
  description: "东西冲海岸线被《国家地理杂志》评为中国最美的十大徒路线之一。东西冲海岸线是深圳最美丽、最经典的海岸线徒步线路：屏山傍海，山岳纵横，海岸线漫长，沙滩、岛屿、礁石、海蚀岩、洞、桥、柱等海积海蚀地貌发育齐全，给你完美的穿越体验！<br>
  <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tNc79gy1fjx6cbotpuj30rs0f5gnw.jpg\"><br>
  <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjx6ca47abj30rs0e3gmy.jpg\"><br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjx6c986rxj30p00ew7a3.jpg\"><br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjx6c7kbb5j30p00gotin.jpg\"><br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjx6c6dmakj30m80dlqbl.jpg\"><br>",
  province: "440000",
  city: "440100",
  address: "广东广州南澳镇西冲村",
  sponsor: "小来子",
  limited_num: 50,
  start_time: Time.local(2017, 10, 15, 19, 00),
  end_time: Time.local(2017, 10, 15, 22, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNc79gy1fj9lhciprpj30rs0g9q4f.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/travel/201.jpg")
)

# 约厨3

events << Event.create!(
  id: 6,
  category_id: 3,
  user_id: users.sample.id,
  title: "泡面食堂大侠召集令",
  description: "泡面食堂大侠召集令！邀请你来亲尝为你收刮来的世界级的泡面！<br>
                让你来评价一下，哪一款泡面成为你的freestyel！<br>
                你可以是很爱吃泡面的吃货<br>
                游侠客帮你架起与泡面的友谊之桥<br>
                你也可以是很爱凑热闹的XX群众<br>
                游侠客【泡面食堂】最不缺的就是热闹！
                <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tNc79gy1fjx6fujx1lj30rs0kt7gu.jpg\"><br>",
  province: "330000",
  city: "330100",
  address: "浙江杭州游侠客民宿",
  sponsor: "游侠客",
  limited_num: 100,
  start_time: Time.local(2017, 10, 10, 19, 00),
  end_time: Time.local(2017, 10, 10, 22, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNc79gy1fj9li8mjq7j30rs0fn13q.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/cooking/noddles.jpg")
)

events << Event.create!(
  id: 7,
  category_id: 3,
  user_id: users.sample.id,
  title: "心灵厨房",
  description: "唯美食与爱不可辜负,<br>
                而一饭一蔬，皆是爱意,<br>
                所以，这里是一个关于食物和心理学的课程.<br>
                <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tNc79gy1fjx6j2jxljj30xc0r9x2m.jpg\" style=\"width: 960px;\"><br>
                <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjx6iwpk4yj30qo0qoaru.jpg\"><br>",
  province: "610000",
  city: "610100",
  address: "陕西西安碑林区长安北路皇族雅苑别墅",
  sponsor: "卷毛银时",
  limited_num: 30,
  start_time: Time.local(2017, 11, 15, 10, 00),
  end_time: Time.local(2017, 11, 15, 12, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79gy1fj9li8zya9j30k00d9407.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/cooking/102.jpg")
)

# 交友4

events << Event.create!(
  id: 8,
  category_id: 4,
  user_id: users.sample.id,
  title: "【无意义大赛】全宇宙最无聊的比赛，太扯淡了!",
  description: "赛事介绍：<br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjx6mvmai7j30rs2jvgzd.jpg\"><br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjx6mtnd0dj30rs2jvwog.jpg\"><br>",
  province: "330000",
  city: "330100",
  address: "浙江杭州运河大兜路146号游侠客民宿",
  sponsor: "游侠客",
  limited_num: 60,
  start_time: Time.local(2017, 8, 20, 10, 00),
  end_time: Time.local(2017, 8, 20, 12, 00) ,
  # start_time: Time.local(2017, 08, 20, 19, 00),
  # end_time: Time.local(2017, 08, 20, 22, 00),
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws3.sinaimg.cn/large/006tNc79gy1fj9ljmpheqj30f108648v.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/friends/101.png")
)

events << Event.create!(
  id: 9,
  category_id: 4,
  user_id: users.sample.id,
  title: "第二届ACG国际艺术展：展会作品大招募",
  description: "我们不仅是一个静态艺术展<br>
                更是一个贩卖视觉艺术的超级市场<br>
                我们不仅是一个创意市集<br>
                更是一个视觉艺术大party<br>
                我们不仅有来自国外的艺术表演节目<br>
                还有来自名校优秀学生的服装秀<br>
                我们不仅有国内外大师云集的艺术论坛交流<br>
                还有集万千糕点、酒水于一身的交流酒会<br>
                欢迎各种视觉噪音<br>
                让视觉也躁起来.<br>
                <br>
                <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tNc79gy1fjx6og7sdmj30do0kd78e.jpg\"><br>
                <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tNc79gy1fjx6ofpac2j30qo0i2tfd.jpg\"><br>",
  province: "440000",
  city: "440300",
  address: "深圳南山大冲国际中心5号楼6楼CD单元",
  sponsor: "ACG国际艺术教育",
  limited_num: 30,
  start_time: Time.local(2017, 12, 18, 19, 00),
  end_time: Time.local(2017, 12, 18, 20, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws2.sinaimg.cn/large/006tNc79gy1fj9lvg6cifj30xc0m8n37.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/friends/102.jpeg")
)

events << Event.create!(
  id: 10,
  category_id: 4,
  user_id: users.sample.id,
  title: "梦想花艺课堂之居家桌花",
  description: "
  <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tNc79gy1fjyc02qmpej30ku0gwdgi.jpg\"><br>
  <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjyc021mxej30kr0gxmyw.jpg\"><br>
  <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjyc00jrw7j30ku0cbdgo.jpg\"><br>
  <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjybzztmeuj30kt0c7wfh.jpg\"><br>
  <img alt=\"\" src=\"https://ws1.sinaimg.cn/large/006tNc79gy1fjybzyttz6j30ky0c6my4.jpg\"><br>",
  province: "510000",
  city: "510100",
  address: "成都二环路东二段508号光谷创业咖啡一楼咖啡厅",
  sponsor: "光谷创业咖啡",
  limited_num: 10,
  start_time: Time.local(2017, 12, 10, 14, 00),
  end_time: Time.local(2017, 12, 10, 18, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79ly1fj9lweuvsfj30fe083gmf.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/friends/flower.jpg")
)

# 读书5

events << Event.create!(
  id: 11,
  category_id: 5,
  user_id: users.sample.id,
  title: "光阴读书会 | 朗读场",
  description: "朗读，是人与生俱来的能力。无论乡关何处，情相通。<br>
                朗读，是古已有之的音乐。快慢行柔、抑扬顿挫，皆成乐章。<br>
                关闭其他感官，耳朵借我，感受声波经空气带来的按摩。<br>
                放下一切评判，把心打开，体会平凡文字的撩拨。<br>
                带上喜欢的文字和你的故事，沉浸在9月的光阴里、情感的交融中。<br>
                <img alt=\"\" src=\"https://ws3.sinaimg.cn/large/006tNc79gy1fjx6uscfjlj30fe0axweq.jpg\"><br>",
  province: "310000",
  city: "310000",
  address: "上海静安芷江西路151号 文化中心 4楼多功能厅",
  sponsor: "书虫部落",
  limited_num: 50,
  start_time: Time.local(2017, 11, 11, 19, 00),
  end_time: Time.local(2017, 11, 11, 21, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws1.sinaimg.cn/large/006tNc79ly1fj9lvxqgqej31kw0whtfy.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/reading/101.jpg")
)

# 游戏6

events << Event.create!(
  id: 12,
  category_id: 6,
  user_id: users.sample.id,
  title: "周末拒绝宅，一起狼人杀吧",
  description: "一局狼人杀会让你爱上桌游, 也会使你深刻体会快乐真的会让时间变得匆匆.<br>
  加入我们，一起玩耍吧.<br>
  <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tNc79ly1fjx7612s7sj30f00a0q3m.jpg\"><br>",
  province: "110000",
  city: "110000",
  address: "北京海淀区避风塘",
  sponsor: "殽赦",
  limited_num: 15,
  start_time: Time.local(2017, 10, 10, 14, 00),
  end_time: Time.local(2017, 10, 10, 18, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79ly1fj9lweuvsfj30fe083gmf.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/game/601.jpeg")
)


events << Event.create!(
  id: 13,
  category_id: 6,
  user_id: users.sample.id,
  title: "王者荣耀成都大赛",
  description: "王者荣耀盛典即将开启，官方为大家准备了七大福利活动，想参加的快来看看吧！<br>
  你的游戏不再孤单。我们会不定期组织群活动，一起打排位赛.<br>
  <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tKfTcgy1fk0f5ejiz6j30hs0cqgoh.jpg\"><br>
  <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tKfTcgy1fk0f5dl2bij30hs0diabb.jpg\"><br>
  <img alt=\"\" src=\"https://ws4.sinaimg.cn/large/006tKfTcgy1fk0f5cw418j30hs0dx76z.jpg\"><br>
  <img alt=\"\" src=\"https://ws2.sinaimg.cn/large/006tKfTcgy1fk0f5c3vxaj30hs0fvwfd.jpg\"><br>",
  province: "510000",
  city: "510100",
  address: "成都未来国际大厦",
  sponsor: "winter",
  limited_num: 100,
  start_time: Time.local(2017, 12, 10, 14, 00),
  end_time: Time.local(2017, 12, 10, 18, 00) ,
  status: ["preparing","processing"].sample,
  # logo: MiniMagick::Image.open("https://ws4.sinaimg.cn/large/006tNc79ly1fj9lweuvsfj30fe083gmf.jpg")
  logo: MiniMagick::Image.open("#{Rails.root}/app/assets/images/game/602.jpg")
)

puts "Events are created"

# 收藏

100.times do |i|
  Like.create!(user_id: users.sample.id, event_id: events.sample.id)
end

puts "Likes are created"

# 点赞

100.times do |i|
  Favorite.create!(user_id: users.sample.id, event_id: events.sample.id)
end
puts "Favorites are created"
# 申请
ApplyEvent.delete_all

events.each do |e|
  10.times do |i|
    ApplyEvent.create!(user_id: users[i].id, event_id: e.id)
  end
end
puts "apply are created"

# review
Review.delete_all

events.each do |e|
  Review.create!(user_id: 1, event_id: e.id, content: ["I like it","it is so cool","不得不点赞的说"].sample)
end
puts "Reviews are created"
