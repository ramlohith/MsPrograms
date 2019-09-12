require 'date'   #include date library

class Movie
  attr_reader :name, :release_date            #attr_reader is method to create getters!
  def validate_date?(date)                    #a method to validate date. Being used in multiple places
    date_format = '%m-%d-%Y'
    DateTime.strptime(date, date_format)
    true
  rescue ArgumentError                         #exception handling to avoid stop in execution of code
    false
  end
  def initialize (name, release_date)
    if name.nil? || validate_date?(release_date) == false || name.empty? || release_date.empty?
      #check for conditions as mentioned in assignment
    raise ArgumentError.new("Arguments are in invalid format")          #stop execution if parameters to object is invalid
  else
    @name = name
    @release_date = release_date
  end
  end

  def name=(name)               #setter for name
    @name = name
  end

  def release_date=(release_date)   #setter for release date
    if validate_date?(release_date)
      @release_date = release_date
    else
      raise ArgumentError.new("Argument date is not in valid format")
    end
  end

  def released_on
    if validate_date?(@release_date) == false
      return "Invalid Date"
    else
      return @name + " - " + DateTime.strptime(@release_date,'%m-%d-%Y').strftime('%B %d %Y').to_s
    end
  end

  def is_released?
    if validate_date?(@release_date) == false
      return "Invalid Date"
    else
      if DateTime.strptime(@release_date,'%m-%d-%Y') > Date.today
        false
      else
        true
      end
    end
  end
end

m = Movie.new('a','02-26-2099')
puts m.name
m.release_date = '03-03-2010'
p m.release_date
p m.released_on
p m.is_released?
