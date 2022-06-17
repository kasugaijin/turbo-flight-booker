# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# https://kolosek.com/rake-db-commands/
# use rake db:reset to drop the local database and start fresh with data loaded from db/seeds.rb
# useful when making changes to scheme in development

airports = {
  'Jersey' => 'JER',
  'Gatwick' => 'LGW'
}

airports.each do |name, symbol|
  Airport.create(name: name, symbol: symbol)
end

Flight.create([
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 1), time: '09:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 1), time: '11:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 1), time: '13:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 1), time: '15:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 2), time: '09:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 2), time: '11:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 2), time: '13:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 2), time: '15:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 3), time: '09:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 3), time: '11:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 1, arr_airport_id: 2, date: DateTime.new(2023, 7, 3), time: '13:00'
    },
    { number: 'BA123', duration: 55, aircraft: 'A319',
      dept_airport_id: 2, arr_airport_id: 1, date: DateTime.new(2023, 7, 3), time: '15:00'
    }
])