class Contact
  attr_writer :first_name, :middle_name, :last_name

  # def initialize(name, number)
  #
  # end

  def first_name
    @first_name
  end

  def middle_name
    @middle_name
  end

  def last_name
    @last_name
  end

  def last_first
    full_name = last_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += " "
    full_name += first_name
    full_name
  end

  def first_last
    full_name = first_name
    full_name += " "
    full_name += last_name
    full_name
  end

  def full_name
    full_name = first_name
    if !@middle_name.nil?
      full_name += " "
      full_name += middle_name
    end
    full_name += " "
    full_name += last_name
    full_name
  end

  def to_s(format = 'full_name')
    case format
    when 'full_name'
      full_name
    when "last_first"
      last_first
    when 'first'
      first_name
    when 'last'
      last_name
    else
      first_last
    end
  end
end

fionna = Contact.new
fionna.first_name = "Fionna"
fionna.middle_name = "The"
fionna.last_name = "Human"
puts fionna.to_s('full_name')

marci = Contact.new
marci.first_name = "Marceline"
marci.last_name = "(Vampire Queen)"
puts marci.to_s('full_name')

simon = Contact.new
simon.first_name = "Simon"
simon.last_name = "Ice King"
puts simon.to_s('last_first')