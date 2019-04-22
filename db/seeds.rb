User.destroy_all
u1 = User.create :email => 'adrian@snowbuddy.com', :password => 'asdasd'
u2 = User.create :email => 'nico@snowbuddy.com', :password => 'asdasd'

p "user created"

Resort.destroy_all
r1 = Resort.create :name => 'Mount Hutt', :region => 'New Zealand', :homepage => 'https://www.mthutt.co.nz/', :lifts => 5, :elevation => '2190', :area => '365'
r2 = Resort.create :name => 'Loveland', :region => 'Colorado', :homepage => 'http://www.skiloveland.com/', :lifts => 10, :elevation => '3965', :area => '1800'
r3 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458'

p "resort created"

Message.destroy_all
m1 = Message.create :message => 'Looking for Buddy for A-Basin'
m2 = Message.create :message => 'Looking for Buddy for Mt hutt'

p "message created"
