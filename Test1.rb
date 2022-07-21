class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr    
    end

    def display_details()
        puts "ID: #@cust_id"
        puts "Name: #@cust_name"
        puts "Address: #@cust_addr"
    end
end

cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.display_details()
cust2.display_details()