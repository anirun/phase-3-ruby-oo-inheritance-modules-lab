module Findable
  @@all = []

  def all
    @@all
  end

  def find_by_name(name)
    self.all.detect{|a| a.name == name}
  end

end