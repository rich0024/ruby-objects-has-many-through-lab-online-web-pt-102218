class Doctor

  attr_accessor :name, :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def patients
  self.appointments.collect do |appointment|
    appointment.patient
    end
  end

end
