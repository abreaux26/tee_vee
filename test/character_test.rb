require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def test_it_exist
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, character
  end

  def test_if_it_has_readable_attributes
    character = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_equal "KITT", character.name
    assert_equal "William Daniels", character.actor
    assert_equal 1_000_000, character.salary
  end

end
