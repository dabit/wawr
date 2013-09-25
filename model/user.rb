require 'pg'

DB = PG.connect( dbname: 'test', host: 'localhost')

class User
  def self.all
    result = DB.exec "SELECT * FROM users"
    fields = result.fields
    result.collect do |row|
      hash   = {}
      row.each_with_index do |value, i|
        hash[fields[i]] = value
      end
    end
  end
end

p User.all
