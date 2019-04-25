User.destroy_all
u1 = User.create :email => 'adrian@snowbuddy.com', :password => 'asdasd'
u2 = User.create :email => 'roy@snowbuddy.com', :password => 'asdasd'
u3 = User.create :email => 'nico@snowbuddy.com', :password => 'asdasd'

p "user created"

Resort.destroy_all
r1 = Resort.create :name => 'Mount Hutt', :region => 'New Zealand', :homepage => 'https://www.mthutt.co.nz/', :lifts => 5, :elevation => '2190', :area => '365', :image => 'https://www.nzski.com/media/1658/mh-trail-map.jpg?quality=80&width=1600&height=900&mode=crop', :thumbnail => 'https://www.methvenmthutt.co.nz/wp-content/uploads/2016/03/Mt-Hutt-Ski-Area-%C2%A9-nzski.com-Methven-Mt-Hutt-Guide-NZ-01.jpg'
r2 = Resort.create :name => 'Loveland', :region => 'Colorado', :homepage => 'http://www.skiloveland.com/', :lifts => 10, :elevation => '3965', :area => '1800', :image => 'https://skimap.org/data/515/2200/1536424485.jpg', :thumbnail => 'https://skiloveland.com/wp-content/uploads/2017/10/LovelandSkiAreaFrontSign.jpg'
r3 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458', :image => 'https://skimap.org/data/513/2200/1533603005.jpg', :thumbnail => 'https://www.stillstoked.com/wp-content/uploads/sites/58/2016/05/Arapahoe-Basin.jpg'
r4 = Resort.create :name => 'Turoa', :region => 'New Zealand', :homepage => 'https://www.mtruapehu.com/turoa', :lifts => 5, :elevation => '2797', :area => '500', :image => 'https://skimap.org/data/1095/2205/1502185116jpg_render.jpg', :thumbnail => 'http://c0481729.cdn2.cloudfiles.rackspacecloud.com/p-93C8EBF1-035D-11A3-F048FAF69E4A8317-4404077.jpg'
r5 = Resort.create :name => 'Whakapapa', :region => 'New Zealand', :homepage => 'https://www.mtruapehu.com/whakapapa', :lifts => 8, :elevation => '2797', :area => '550', :image => 'https://skimap.org/data/1094/3230/1535605654jpg_render.jpg', :thumbnail => 'https://www.powderhounds.com/site/DefaultSite/filesystem/images/New%20Zealand/Whakapapa/Overview/Whakapapa-Overview-03.jpg'
#r6 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458', :image => 'https://skimap.org/data/513/2200/1533603005.jpg'
#r7 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458', :image => 'https://skimap.org/data/513/2200/1533603005.jpg'
#r8 = Resort.create :name => 'Arapahoe Basin', :region => 'Colorado', :homepage => 'http://arapahoebasin.com/', :lifts => 9, :elevation => '3978', :area => '1458', :image => 'https://skimap.org/data/513/2200/1533603005.jpg'

p "resort created"

Message.destroy_all
m1 = Message.create :message => 'Anyone riding Mt Hutt Today?'#, :created_at => Time.now
m2 = Message.create :message => 'Looking for Buddy for Loveland!'#, :created_at => Time.now
m3 = Message.create :message => 'Anyone looking for a buddy for A-basin!?'#, :created_at => Time.now
m4 = Message.create :message => 'Looking for park buddy today!'#, :created_at => Time.now
m5 = Message.create :message => 'New too A Basin, can someone show me around?'#, :created_at => Time.now

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

r3.messages << m4
u1.messages << m4
r3.messages << m5
u2.messages << m5


p "more abasin messages"
