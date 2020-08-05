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
    Appointment.new(date,self, doctor)
  end
  
 def appointments
     Appointment.all.select do |appointment|
      appointment.patient == self
     # binding.pry
    end
  end

  def doctors
    self.appointments.collect do |appointment|
    appointment.doctor
  end
 end 
end


