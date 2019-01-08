class Pal < ApplicationRecord
  validates :count, presence: true, uniqueness: true

  before_create :find_par

  private

  def find_par
    result = go(self.count)
    self.res = result.to_json
  end

  def answer(num)
    if num.to_i.positive?
      num = num.to_i
      nach = 10**(num - 1)
      konech = 10**(num) - 1
      kolv=0
      sum=0
      arr = []

      while (nach <= konech) do #идем по диапозону числе от начального к конечному
        i = nach
        p i
        while i > 0 do #тут с помощью цикла будем выяснять удволтеворяет ли число условию
          s = (i % 10).to_i
          sum = sum + s**(num)
          p sum
          i = i.div 10
          p i
        end
        if (sum==nach)
          arr.push(sum) #добавление числа в массив
          kolv=kolv+1
        end
        nach=nach+1
        sum = 0
      end
      arr.push('В данном диапозоне чисел армстронга нет') if arr.empty?
    else
      arr = [['Неверные входные данные']]
    end
    arr
  end

  def go(num)
    tmp = num.to_s
    num = num.to_i

    if tmp.scan(/\d+/) != ["#{tmp}"] || tmp == ''
      @result = [['Неверные входные данные']]
    else
      result_array = answer(num)

      @means = result_array

      if(result_array == nil) then
        @result = [['Простых пар не найдено']]
      else
        @result = result_array
      end
    end
  end

end
