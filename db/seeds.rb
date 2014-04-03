# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.delete_all

# Article Title data
bus = %w(Microsoft Apple Google Mashable Lifehacker McDonalds Applebees Facebook Twitter)
apps = %w(Chrome Safari Internet\ Explorer Opera Firefox Spotify Sublime\ Text Terminal)
types = %w(Escalation Password\ Resets Support\ Procedures Assignment Outages Common\ Problems)
locations = %w(Connecticut Maine Vermont Florida Texas Washington Springfield Gotham Metropolis)

kb_counter = 0
bus.each do |bu|
  apps.each do |app|
    types.each do |type|
      locations.each do |location|
        kb_counter += 1

        title = "UTC - #{bu} - #{app} - #{type} - #{location} (#{kb_counter})"
        kb_number = sprintf("KBA%08d", kb_counter)
        contents = 
        "<strong>Section 1</strong>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse interdum purus lectus, nec suscipit orci pulvinar vel. Nunc pharetra, risus ut congue posuere, erat mi iaculis justo, nec tristique nulla mauris vel enim. Praesent eu lorem id tellus ultrices egestas. Nulla malesuada sapien ligula. Nullam aliquam lectus at massa gravida, et elementum augue congue. Donec tempus, massa eget imperdiet pellentesque, nulla risus tincidunt dui, tincidunt dictum ipsum sapien sit amet turpis. Quisque tempor semper euismod. Nam odio lectus, venenatis quis placerat eu, egestas non urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse ut diam eu leo blandit iaculis. Donec commodo fermentum lectus, tempus varius dolor rhoncus in. Aenean non magna auctor, commodo libero ut, consequat sapien. Quisque ullamcorper elit id venenatis dictum.</p>
        <strong>Section 2</strong>
        <p>Etiam rutrum cursus ultrices. Nulla facilisi. Nam semper ligula odio, id volutpat ipsum sodales vitae. Cras malesuada, purus at posuere tincidunt, felis eros fringilla nulla, in ultrices quam felis in justo. Morbi vel posuere ligula, a auctor arcu. Pellentesque eget sodales turpis. Mauris mattis malesuada auctor. Etiam tincidunt arcu condimentum libero mattis, quis elementum nulla aliquet. Curabitur eleifend magna ac arcu rhoncus sodales.</p>
        <strong>Section 3</strong>
        <p>Fusce ullamcorper eleifend orci nec rutrum. Nam sed erat erat. Quisque facilisis ut odio ut fermentum. Ut blandit cursus nunc et venenatis. Aenean ornare orci eget augue porta, a laoreet nunc imperdiet. Aliquam pretium diam et sapien placerat vehicula. Donec condimentum orci quis mi tempus, et euismod nulla cursus. Mauris dignissim purus eu augue fringilla, quis tincidunt neque venenatis. Morbi dictum nunc vitae ante fermentum, eu mollis mi accumsan. Duis sagittis metus mauris, sit amet tempus turpis interdum in.</p>"

        Article.create(title: title, kb_number: kb_number, contents: contents)

      end
    end
  end
end