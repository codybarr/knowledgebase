class AddIndexToArticle < ActiveRecord::Migration
  def change
    execute "
    create index on articles using gin(to_tsvector('english', kb_number));
    create index on articles using gin(to_tsvector('english', title));
    create index on articles using gin(to_tsvector('english', contents));"
  end
end
