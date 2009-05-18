require "tk"

TkFrame.new {
  TkLabel.new(self, {"text"=>"A"}).pack "side"=>"left"
  TkLabel.new(self, {"text"=>"B"}).pack "side"=>"left"
}.pack
TkFrame.new {
  TkLabel.new(self, {"text"=>"C"}).pack "side"=>"left"
  TkLabel.new(self, {"text"=>"D"}).pack "side"=>"left"
}.pack
Tk.mainloop
