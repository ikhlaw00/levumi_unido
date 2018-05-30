# -*- encoding : utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

 namespace :db do
   task seeds: :environment do
     Dir[File.join(Rails.root, 'db', 'seeds', 'tests', '*.rb')].each do |filename|
       puts "seeding - #{filename}"
       load(filename)
     end
     Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |filename|
       puts "seeding - #{filename}"
       load(filename)
     end
   end
 end
