require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def test_it_exist
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_instance_of Show, show
  end

  def test_if_it_has_readable_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "Knight Rider", show.name
    assert_equal "Glen Larson", show.creator
    assert_equal [michael_knight, kitt], show.characters
  end

  def test_total_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal 2600000, show.total_salary
  end

  def test_highest_paid_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal "David Hasselhoff", show.highest_paid_actor
  end

  def test_get_actors_only
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    show = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])

    assert_equal ["David Hasselhoff", "William Daniels"], show.actors
  end

end
