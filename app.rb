require('rspec')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address')
require('./lib/contacts')

get('/') do
  erb(:index)
end

post('/contact_form') do
  name = params.fetch('name')
  age = params.fetch('age')
  level = params.fetch('level')
  email = params.fetch('email')
  phone = params.fetch('phone')
  address = params.fetch('address')
  @contact = Contact.new(:name => name, :age => age, :level => level, :emails => email, :phones => phone, :mailing_addresses => address)
  erb(:contacts)
  @contact.save()
end
