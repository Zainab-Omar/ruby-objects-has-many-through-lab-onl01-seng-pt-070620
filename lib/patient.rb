require 'pry'

class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end
  
 def appointments
     Appointment.all.select do |appointment|
      appointment.patient == self
     # binding.pry
    end
  end

  def doctors
    appointments.collect do |appointment|
    appointment.date
   # binding.pry
  end
end
end


