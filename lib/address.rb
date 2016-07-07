class Contact
  attr_reader(:street, :city, :state)
  @@contacts = []
  define_method(:initialize) do |attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
  end
end
