class AddIndexToArticle < ActiveRecord::Migration
  def change
    execute "
    create index on article using gin(to_tsvector('english', kba_number));
    create index on article using gin(to_tsvector('english', title));
    create index on article using gin(to_tsvector('english', contents));"
  end
end
