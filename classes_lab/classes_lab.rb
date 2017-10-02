class CodeClanStudent

  def initialize(student, cohort)
    @student = student
    @cohort = cohort
  end

  def student_name
    return @student
  end

  def cohort_number
    return @cohort
  end

  def set_student_name(name)
    @student = name
  end

  def set_student_cohort(number)
    @cohort = number
  end

  def student_talk()
    return 'I can talk!'
  end

  def favourite_language(best)
    return 'My favourite language is ' + best
  end

end
