# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Jack', :password => 'chicken', :admin => true, :email => 'jack@ga.co'
u2 = User.create :name => 'Joshua', :password => 'chicken', :admin => true, :email => 'joshua@ga.co'
u3 = User.create :name => 'Tom', :password => 'chicken', :admin => false, :email => 'tom@ga.co'
u4 = User.create :name => 'Sam', :password => 'chicken', :admin => false, :email => 'sam@ga.co'
u5 = User.create :name => 'Tim', :password => 'chicken', :admin => false, :email => 'tim@ga.co'
u6 = User.create :name => 'Sue', :password => 'chicken', :admin => false, :email => 'sue@ga.co'
u7 = User.create :name => 'Jil', :password => 'chicken', :admin => false, :email => 'jil@ga.co'
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :name => '747', :row => 24, :column => 4
a2 = Airplane.create :name => '757', :row => 8, :column => 4
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :flight_no => 23, :origin => 'JFK', :destination => 'SFO', :date => "2013-01-03"
f2 = Flight.create :flight_no => 87, :origin => 'JFK', :destination => 'LAX', :date => "2013-03-03"
f3 = Flight.create :flight_no => 9, :origin => 'JFK', :destination => 'SFO', :date => "2013-08-03"
f4 = Flight.create :flight_no => 412, :origin => 'JFK', :destination => 'SFO', :date => "2013-03-03"
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create :seat_number => '22C' 
r2 = Reservation.create :seat_number => '2C' 
r3 = Reservation.create :seat_number => '22C' 
r4 = Reservation.create :seat_number => '2C' 
r5 = Reservation.create :seat_number => '21A' 
r6 = Reservation.create :seat_number => '1A' 
r7 = Reservation.create :seat_number => '21A' 
r8 = Reservation.create :seat_number => '1A' 
r9 = Reservation.create :seat_number => '22D'
r10 = Reservation.create :seat_number => '2D'
r11 = Reservation.create :seat_number => '22D'
r12 = Reservation.create :seat_number => '2D'
r13 = Reservation.create :seat_number => '22B'
r14 = Reservation.create :seat_number => '2B'
r15 = Reservation.create :seat_number => '22B'
r16 = Reservation.create :seat_number => '2B'
r17 = Reservation.create :seat_number => '23C'
r18 = Reservation.create :seat_number => '3C'
r19 = Reservation.create :seat_number => '23C'
r20 = Reservation.create :seat_number => '3C'

puts "#{ Reservation.count } reservations"

puts "reservations and users"
u3.reservations << r1 << r2 << r3 << r4
u4.reservations << r5 << r6 << r7 << r8
u5.reservations << r9 << r10 << r11 << r12
u6.reservations << r13 << r14 << r15 << r16
u7.reservations << r17 << r18 << r19 << r20

puts "Flights and reservations"
f1.reservations << r4 << r8 << r12 << r16 << r20
f2.reservations << r3 << r7 << r11 << r15 << r19
f3.reservations << r2 << r6 << r10 << r14 << r18
f4.reservations << r1 << r5 << r9 << r13 << r17

puts "Airplane and flights"
a1.flights << f2 << f4
a2.flights << f1 << f3
