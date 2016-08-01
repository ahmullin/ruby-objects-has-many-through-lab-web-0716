class Appointment

attr_accessor :doctor, :patient

  def initialize(date, doctor_object)
    @date = date
    @doctor = doctor_object
    doctor_object.appointments << self
  end


end
