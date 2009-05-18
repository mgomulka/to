require 'rubygems'
require 'active_record'

class Wypozyczenie < ActiveRecord::Base
    set_table_name 'Wypozyczenia'
    belongs_to :pracownik
end
