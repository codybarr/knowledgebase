# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all

names = Forgery(:name)
ipsum = Forgery(:lorem_ipsum)

20000.times do |kb_counter|

  kb_number = sprintf("KBA%08d", kb_counter)
  title = "#{names.company_name} - #{names.industry} - #{names.location} (#{kb_counter})"

  contents = 
  "<strong>#{ipsum.word} 1</strong>
  #{ipsum.paragraphs(2, html: true)}
  <strong>#{ipsum.word} 2</strong>
  #{ipsum.paragraphs(2, html: true)}
  <strong>#{ipsum.word} 3</strong>
  #{ipsum.paragraphs(2, html: true)}"

  Article.create(title: title, kb_number: kb_number, contents: contents)

end

