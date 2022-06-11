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
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-01 09:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-01 11:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-01 13:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-01 15:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-02 09:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-02 11:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-02 13:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-02 15:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-03 09:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-03 11:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 1, arr_airport_id: 2, date_time: DateTime.parse('2023-07-03 13:00')
    },
    { number: 'BA123', duration: 55, aircraft: 'Airbus A319',
      dept_airport_id: 2, arr_airport_id: 1, date_time: DateTime.parse('2023-07-03 15:00')
    }
])