class Potluck

  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

  def menu
    ordered = @dishes.map do |dish|
       dish.name
     end.sort
    ordered.group_by do |name|
      (dishes.find  do |dish|
        dish.name == name
      end.category.to_s + "s").to_sym
    end
  end

  def ratio(category)
    (get_all_from_category(category).count/@dishes.count.to_f)*100
  end

end
