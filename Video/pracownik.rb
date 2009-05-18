require 'rubygems'
require 'active_record'

class Pracownik < ActiveRecord::Base

  set_table_name 'Pracownicy'
  has_many :wypozyczenia
end
