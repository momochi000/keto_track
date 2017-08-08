namespace :dev do
  desc "Seed the db with dummy data for use in development"
  task :seed => :environment do

    puts "LOG: Creating first dummy user foo@bar.com"
    u = FactoryGirl.create(:user, :email => 'foo@bar.com', :password => '123456', :password_confirmation => '123456')
    FactoryGirl.create(:meal, :user => u)
  end
end
