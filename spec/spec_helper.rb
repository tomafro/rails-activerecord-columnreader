require 'bundler/setup'
require 'active_record'
require 'activerecord-column-reader'
require 'logger'

ActiveRecord::Base.establish_connection({
  :adapter => "sqlite3",
  :database => "test.db"
})

ActiveRecord::Schema.define(:version => 1) do
  create_table 'monsters', :force => true do |t|
    t.string   'name'
    t.date     'dob'
    t.boolean  'carnivorous'
    t.float    'stomachs'
  end
end
