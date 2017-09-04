
namespace :seed do
  desc "TODO"
  task single: :environment do
    filename = Dir[File,join(Rails.root, 'seeds', "#{ENV['SEED']}.rb")][0]
    puts "档案#{filename}, 开始执行"
    load(filename) if File.exit?(filename)
    puts "档案#{filename}, 执行完成"
  end
end
