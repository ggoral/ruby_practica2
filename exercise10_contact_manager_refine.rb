#!/usr/bin/env ruby
# coding: utf-8

require 'date'

Contact = Struct.new(:name, :birthday, :email, :phone, :address)

class Contact_manager
  attr_reader:contact_list
  
  def initialize()
    @contact_list = []
  end

  def add_contact(contact)
    @contact_list << contact
  end
 
  def size
    @contact_list.size
  end

  def to_s
    @contact_list.each {|c| puts c}
    ""
  end
  
  def search(key,value)
    @contact_list.select { |contact| contact.to_h[key] == value}
  end
end


c1 = Contact.new("Gonzalo","3-3-1983","goral.gonzalo@gmail.com","4614742","155 N° 1039")
c2 = Contact.new("Luciana","23-6-1988","gatti.luciana@gmail.com","4614742","43 N° 31")

cm = Contact_manager.new
cm.add_contact(c1)
cm.add_contact(c2)
puts cm.search(:name,"Gonzalo")
