require 'sequel'
require 'date'

if $TEST == true
  DB = Sequel.connect('sqlite://test.db')
else
  DB = Sequel.connect('sqlite://checkbook.db')
end

class Checkbook

end

class Account < Sequel::Model

end

def create_database
  DB.create_table :accounts do
    primary_key :id
    String :description
    Numeric :balance
  end
end
