#!/usr/bin/env ruby
# coding: utf-8

require 'csv'

Contact = Struct.new(:name, :birthday, :email, :phone, :address)

class Contact_manager
  attr_reader:contacts
  
  def initialize()
    @contacts = []
  end

  def add_contact(contact)
    @contacts << contact
  end
 
  def del_contact(contact)
    @contacts.delete(contact)
  end
 
  def size
    @contacts.size
  end

  def to_s
    @contacts.each {|c| puts c}
    ""
  end
  
  def search(key,value)
    @contacts.select { |contact| contact[key] == value}.first
  end
 
  def mod_contact(key, old_value, new_value)
    contact = self.search(key,old_value)
    contact[key] = new_value
  end

  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @contacts << Contact.new(row["Name"], row["Birthdate"], row["Email"], row["Phone"], row["Address"])
    end
  end

  def write_csv_data(csv_file_name)
    CSV.open(csv_file_name, "w") do |csv|
      csv << ["Gonzalo","3-3-1983","goral.gonzalo@gmail.com","4614742","155 N° 1039"]
    end
  end
end

#c1 = Contact.new("Gonzalo","1983-03-03","goral.gonzalo@gmail.com","4614742","155 N° 1039")
#c2 = Contact.new("Luciana","1988-06-23","gatti.luciana@gmail.com","4614742","43 N° 31")
#cm = Contact_manager.new
#cm.add_contact(c1)
#cm.add_contact(c2)
#puts cm.search(:name,"gonzalo")
#puts cm
#cm.mod_contact(:name,"gonzalo","Gonzalo")
#cm.read_in_csv_data("data_read.csv")
#puts cm
#cm.write_csv_data("data_write.csv")
