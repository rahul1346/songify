require 'pg'

module Songify
  class AlbumRepo

    def initialize
      @db = PG.connect(dbname: 'songify-db')
    end

    def build_album(params)
      Songify::Albums.new(params['album_name'], params['album_year'], params['album_artist'])
    end

    def create_table
      command = <<-SQL
      CREATE TABLE IF NOT EXISTS albums(
        id SERIAL PRIMARY KEY,
        album_name TEXT,
        album_year INTEGER,
        album_artist TEXT
       );
      SQL
      @db.exec(command);
    end

    def drop_table
      command = <<-SQL
      DROP TABLE albums;
      SQL
      @db.exec(command);
    end

    def create(aname, ayear, aartist)
      command = <<-SQL 
      INSERT INTO albums(album_name, album_year, album_artist)
      VALUES ('#{aname}', '#{ayear}', '#{aartist}')
      RETURNING *;
      SQL
      result = @db.exec(command);
      build_album(result.first)
    end

  end
end
