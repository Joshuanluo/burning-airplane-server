# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :name => 'Jack', :password => 'chicken', :admin => true
u2 = User.create :name => 'Joshua', :password => 'chicken', :admin => true
u3 = User.create :name => 'Tom', :password => 'chicken', :admin => false
u4 = User.create :name => 'Sam', :password => 'chicken', :admin => false
u5 = User.create :name => 'Tim', :password => 'chicken', :admin => false
u6 = User.create :name => 'Sue', :password => 'chicken', :admin => false
u7 = User.create :name => 'Jil', :password => 'chicken', :admin => false
puts "#{ User.count } users"

Airplane.destroy_all
a1 = Airplane.create :name => '747', :row => 4, :column => 24
a2 = Airplane.create :name => '757', :row => 4, :column => 8
puts "#{ Airplane.count } airplanes"

Flight.destroy_all
f1 = Flight.create :flight_no => 23, :origin => 'JFK', :destination => 'SFO', :date => 3/1/13
f2 = Flight.create :flight_no => 87, :origin => 'JFK', :destination => 'LAX', :date => 3/3/13
f3 = Flight.create :flight_no => 09, :origin => 'JFK', :destination => 'SFO', :date => 3/8/13
f4 = Flight.create :flight_no => 412, :origin => 'JFK', :destination => 'SFO', :date => 3/3/13
puts "#{ Flight.count } flights"

Reservation.destroy_all
r1 = Reservation.create 
r2 = Reservation.create 
r3 = Reservation.create 
r4 = Reservation.create 
r5 = Reservation.create 
r6 = Reservation.create 
r7 = Reservation.create 
r8 = Reservation.create 
r9 = Reservation.create 
r10 = Reservation.create 
r11 = Reservation.create 
r12 = Reservation.create 
r13 = Reservation.create 
r14 = Reservation.create 
r15 = Reservation.create 
r16 = Reservation.create 
r17 = Reservation.create 
r18 = Reservation.create 
r19 = Reservation.create 
r20 = Reservation.create 

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
