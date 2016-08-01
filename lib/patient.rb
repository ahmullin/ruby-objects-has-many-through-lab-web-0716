class Patient

attr_accessor :appointments, :doctors



  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appointment_object)
    appointments << appointment_object
    appointment_object.doctor.patients << self
    appointment_object.patient = self
    doctors << appointment_object.doctor
  end


end
