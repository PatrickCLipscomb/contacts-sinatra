class Contact
  attr_reader(:name, :age, :level, :emails, :phones, :mailing_addresses)
  @@contacts = []
  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @age = attributes.fetch(:age)
    @level = attributes.fetch(:level)
    @emails = attributes.fetch(:emails)
    @phones = attributes.fetch(:phones)
    @mailing_addresses = attributes.fetch(:mailing_addresses)
    @id = @@contacts.length() + 1
  end
  define_method(:save) do
    @@contacts.push(self)
  end
  define_singleton_method(:clear) do
    @@contacts = []
  end
end
