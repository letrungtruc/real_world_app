# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tag_list = ["hello 1", "hello 2"].map { |tag| tag_list = tag }

Article.create title: "hello", body: "body", description: "description", tag_list: tag_list
Article.create title: "hello", body: "body", description: "description", tag_list: tag_list
Article.create title: "hello", body: "body", description: "description", tag_list: tag_list