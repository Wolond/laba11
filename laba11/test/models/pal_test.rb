require 'test_helper'

class PalTest < ActiveSupport::TestCase
  test "should not create pal" do
    pal = Pal.new
    assert !pal.save
  end

  test 'should find pal' do
    assert !Pal.exists?(:count => 1)
  end

  test 'should not save with save fields' do
    pal = Pal.new
    pal.count = 1
    pal.res = '["Нет пары", "-"]'
    assert pal.save
  end
end
