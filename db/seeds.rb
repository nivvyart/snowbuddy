User.destroy_all
u1 = User.create :email => 'adrian@snowbuddy.com', :password => 'asdasd'
u2 = User.create :email => 'roy@snowbuddy.com', :password => 'asdasd'
u3 = User.create :email => 'nico@snowbuddy.com', :password => 'asdasd'

p "user created"

Resort.destroy_all
r1 = Resort.create :name => 'Mount Hutt', :region => 'New Zealand', :homepage => 'https://www.mthutt.co.nz/', :lifts => 5, :elevation => '2190', :area => '365', :image => 'https://www.nzski.com/media/1658/mh-trail-map.jpg?quality=80&width=1600&height=900&mode=crop'
r2 = Resort.create :name => 'Loveland', :region => 'Colorado', :homepage => 'http://www.skiloveland.com/', :lifts => 10, :elevation => '3965', :area => '1800'
r3 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458'

p "resort created"

Message.destroy_all
m1 = Message.create :message => 'Anyone riding Mt Hutt Today?'
m2 = Message.create :message => 'Looking for Buddy for Loveland!'
m3 = Message.create :message => 'Anyone looking for a buddy for A-basin!?'

p "message created"

#this is enough for 1 resort 1 message
#nico looking for a buddy @ mount hutt
r1.messages << m1
u3.messages << m1

p "Nico looking for Mt Hutt Buddy added"

#Roy looking for a buddy @ Loveland
r2.messages << m2
u2.messages << m2

p "Roy looking for Loveland buddy added"

#Roy looking for a buddy @ Loveland
r3.messages << m3
u1.messages << m3

p "Adrian looking for A-basin buddy added"
