require 'rubygems'
require 'active_record'
require 'pracownik'
require 'klient'



ActiveRecord::Base.establish_connection(:adapter => 'mysql',
                                        :database => 'video_rental',
                                        :username => 'root',
                                        :password => 'tinspoon101',
                                        :host => 'localhost')

class DataAccess 

  private_class_method :new
  @@instance = nil

  def initialize()

   @pracownicy = Pracownik.find(:all)
   @klienci = Klient.find(:all)
    
  end

  def DataAccess.getInstance()
    
      @@instance = new if not @@instance
      @@instance
      
  end
  

  def logIn(login, password)
  
      if(Pracownik.find_by_Login(login) and Pracownik.find_by_Haslo(password) )
	    return true
      else
	    return false

      end
  end
  def getClients()
  
    hash = Hash.new
    
    @klienci.each { |k| hash[k.Imie+" "+k.Nazwisko+"    "+k.Login] = k }


    return hash
  end

  def getClient(id)
    
    return Klient.find(:first, :conditions => "id = #{id}" )

  end

  def addClient(name, surname, addr, login, pass)
    
    klient = Klient.new
    klient.Imie = name
    klient.Nazwisko = surname
    klient.Adres= addr
    klient.Login = login
    klient.Haslo = pass
    klient.save    

  end
  def updateClient(klient)

    klient.save
    @klienci = Klient.find(:all)
  end

  def removeClient(klient)
    
    klient.delete
    klient.save
    @klienci = Klient.find(:all)
  end
    

end
