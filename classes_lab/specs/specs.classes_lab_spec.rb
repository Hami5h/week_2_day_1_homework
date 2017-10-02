require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab.rb')

class TestCodeClanStudent < Minitest::Test
  @clan_student

  def setup
    @clan_student = CodeClanStudent.new('Hamish', 16)
  end

  def test_student_name
    assert_equal('Hamish', @clan_student.student_name)
  end

  def test_cohort_number
    assert_equal(16, @clan_student.cohort_number)
  end

  def set_student_name
    @clan_student.set_student_name('Kynan')
    assert_equal('Kynan', @clan_student.student_name)
  end

  def set_student_cohort
    @clan_student.set_student_cohort(1)
    assert_equal(1, @clan_student.student_cohort)
  end

def test_student_talk
  assert_equal('I can talk!', @clan_student.student_talk)
end

def test_favourite_language
  result = @clan_student.favourite_language('Ruby!')
  assert_equal('My favourite language is Ruby!', result)
end

end
