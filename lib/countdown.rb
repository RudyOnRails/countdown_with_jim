class Countdown
  TARGET_RANGE = 30

  def initialize(array)
    @set_of_numbers = array
  end



  def give_us_expression_for(set_of_numbers)
    # "(5 * 100) + ((5 + 6) * 2)"
    @set_of_numbers = set_of_numbers.sort.reverse
    random_target = rand(100..999)
    target_range = get_target_range_for(random_target)
    get_within_target_range(@set_of_numbers, target_range)
  end



  def get_target_range_for(random_target)
    lower_range = random_target - TARGET_RANGE
    upper_range = random_target + TARGET_RANGE
    lower_range..upper_range
  end

  def get_within_target_range(set_of_numbers, target_range)
    str = ""
    # take first two numbers and see if product is within target_range
    first_times_second = set_of_numbers[0] * set_of_numbers[1]
    if target_range.include?(first_times_second)
      mark_as_used([0,1])
      str << "#{set_of_numbers[0]} * #{set_of_numbers[1]} "
    else
    end


  end

  def mark_as_used(array)
    array.each do |index_to_remove|
      @set_of_numbers.delete_at(index_to_remove)
    end
  end





end