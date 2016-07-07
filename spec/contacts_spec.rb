require('rspec')
require('contacts')

describe('Contact') do
  before() do
    Contact.clear()
  end
  describe('#name') do
    it('returns the name of the contact') do
      test_contact = Contact.new({:name => 'Peter', :age => '35', :level => 'B', :emails => ['pete@gmail.com', 'pete@live.com'], :phones => ['(890)567-3210', '(909)654-8934'], :mailing_addresses => ['Chicago', 'NYC', "St. Louis"]})
      expect(test_contact.name()).to(eq('Peter'))
    end
  end
  describe('#emails') do
    it('returns the contact\'s emails') do
      test_contact = Contact.new({:name => 'Peter', :age => '35', :level => 'B', :emails => ['pete@gmail.com', 'pete@live.com'], :phones => ['(890)567-3210', '(909)654-8934'], :mailing_addresses => ['Chicago', 'NYC', "St. Louis"]})
      expect(test_contact.emails()).to(eq(['pete@gmail.com', 'pete@live.com']))
    end
  end
  describe('#emails') do
    it('returns the contact\'s emails') do
      test_contact = Contact.new({:name => 'Peter', :age => '35', :level => 'B', :emails => ['pete@gmail.com', 'pete@live.com'], :phones => ['(890)567-3210', '(909)654-8934'], :mailing_addresses => ['Chicago', 'NYC', "St. Louis"]})
      expect(test_contact.phones()).to(eq(['(890)567-3210', '(909)654-8934']))
    end
  end
end
