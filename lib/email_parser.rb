# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailAddressParser
      attr_accessor :email
    
    def initialize(email)
        @email = email
    end
    
    def parse
        email.split(/, | /).uniq
    end
end

#returns => ["john@doe.com", "person@somewhere.org"]
seperated_by_coma = EmailAddressParser.new("john@doe.com, person@somewhere.org").parse
seperated_by_coma

#returns => ["john@doe.com", "person@somewhere.org"]
separated_by_spaces = EmailAddressParser.new("john@doe.com person@somewhere.org").parse
separated_by_spaces

binding.pry