# README

## Snowbuddy v1.0
GA - Sydney Second project - Presented on 26/04/19

A WebApp to help people find others to Ski and Snowboard with, Skibuddies. Also contains resort information, Weather details and Resort Trail Maps.

### Ruby version
* Rails 5.2.3

### Database
* PostgreSQL 11

### Additional Gems / Libraries:
* gem 'cloudinary'
* gem 'jquery-rails'
* gem 'ransack'
* jquery easyAutocomplete
* Turbolinks

## associations
* Resort > - Has many - > Messages
* Message - Belongs too - Resort
* Message - Belongs to -> User
* User > - Has many - > Messages


### To do:
* About page - Update
  * Just lorem atm...
* User
  * Edit user page
  * Add user image
  * Add user ability
  * Add user home resort
* Messaging
  * Better system, threaded or forum based
  * Limit results per page
    * will.paginate probably a good gem for this
    * automatically hide messages with a past date
  * Filter messages by user ability
* Weather
  * Better weather system, snow forecast specific
  * Historical weather data
    * Past years snowfall - Graphic
* Admin
  * Create admin features
    * User management outside of SQL
  * Resort add Crud system for Admin only

### Snowbuddy 2.0 - Longterm goals
* User added trail Maps
* Resort like/follow system
* user to user follow system
  * User rating system
  * user to user messaging once connected
* O auth for google/fb

### Maybe One day
* User dropped GPS pins to define meeting locations
