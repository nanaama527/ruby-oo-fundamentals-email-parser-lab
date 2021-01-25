# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_reader :email
    def initialize(email)
        @email = email 
    end

    def parse
        @temp_array = []
        @email.gsub(/[\s,]/ ," ").strip.split(" ").each do |email|
            if !@temp_array.include?(email)
              @temp_array << email
            end
        end
        @temp_array
    end
end

    
    