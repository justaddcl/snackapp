namespace :db do

  desc "Rebuilds the entire database, using the migrations and db:seed - manually purges all elasticsearch data forcing a reset"
  task bounce: :environment do
    if Rails.env.production?
      puts "Can not bounce database in production"
      return
    end

    %w(db:drop db:create db:migrate db:seed).each do |rake_task|
      puts ("====> " * 12) + rake_task + (" <====" * 12)
      Rake::Task[rake_task].invoke
    end
    puts "Bounce Complete!"
  end

  desc "Run this before other rake tasks to log the active record output"
  task log: :environment do
    ActiveRecord::Base.logger = Logger.new(STDOUT)
  end
end
