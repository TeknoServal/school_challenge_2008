class School
  attr_reader :hours_in_school_day, :start_time, :student_names

  def initialize(start_time, hours_in_school_day)
    @hours_in_school_day = hours_in_school_day
    @start_time = start_time
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    "#{start_time.delete_suffix(':00').to_i + hours_in_school_day}:00"
  end

  def full_time?
    #Changed is_full_time? to full_time? to align more with Ruby conventions

    hours_in_school_day > 4
  end

  def standard_student_names
    student_names.map(&:capitalize)
  end
end