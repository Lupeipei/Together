CarrierWave.configure do |config|
  config.storage              = :qiniu
  config.qiniu_access_key     = ENV["5zPLGMAF7TecXNciVGEiJnRa59rnALiKvzD9WpZR"]
  config.qiniu_secret_key     = ENV["EnXciIlAk52fuNA3dQN32Hn3vLk386x-Zj69qAsh"]
  config.qiniu_bucket         = ENV["together"]
  config.qiniu_bucket_domain  = ENV["ovyx8s2zv.bkt.clouddn.com"]
  config.qiniu_block_size     = 4*1024*1024
  config.qiniu_protocol       = "http"
  config.qiniu_up_host        = "http://up-z2.qiniu.com"
end
