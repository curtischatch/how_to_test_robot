require 'minitest/autorun'
require 'minitest/pride'
require './robot.rb'

class TestRobot < MiniTest::Test

  def setup
    @robot = Robot.new
  end

  def test_that_foreign_robot_needing_repairs_sent_to_station_1

    @robot.needs_repairs = true
    @robot.foreign_model = 'honda'

    expected_value = 1
    actual_value = @robot.station

    assert_equal(expected_value, actual_value)
  end

  def test_that_vintage_robot_needing_repairs_sent_to_station_2

    @robot.needs_repairs = true
    @robot.vintage_model = 'kia'

    # act
    expected_value = 2
    actual_value = @robot.station

    # assert
    assert_equal(expected_value, actual_value)

  end

  def test_that_standard_robot_needing_repairs_sent_to_station_3

    @robot.needs_repairs = true

    # act
    expected_value = 3
    actual_value = @robot.station

    # assert
    assert_equal(expected_value, actual_value)
  end

  def test_that_robot_in_good_condition_sent_to_station_4


    # act
    expected_value = 4
    actual_value = @robot.station

    # assert
    assert_equal(expected_value, actual_value)
  end

  def test_prioritize_tasks_with_empty_todo_list_returns_negative_one

    validates :presence, true

    # act

    # assert
  end

  def test_prioritize_tasks_with_todos_returns_max_todo_value
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_on_day_off_returns_false
    skip
    # arrange

    # act

    # assert
  end

  def test_workday_not_day_off_returns_true
    skip
    # arrange

    # act

    # assert
  end

end
