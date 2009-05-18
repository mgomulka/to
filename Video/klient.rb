require 'rubygems'
require 'active_record'

class Klient < ActiveRecord::Base
  set_table_name 'Klienci'
  has_many :rezerwacje
  has_many :wypozyczenia

end
