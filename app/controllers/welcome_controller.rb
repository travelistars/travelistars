class WelcomeController < ApplicationController
  def index
  end

  def test
    # to test BizHour/Entry
    biz_hour = BizHour.new
    biz_hour.day_of_week = -1
    biz_hour.open = Time.now
    biz_hour.close = Time.now
    biz_hour.create_entry(:native_name => "test3", :alpha_name => "test alpha3")

    puts biz_hour.inspect
    biz_hour.save

    # to test Genre/Entry
    genre1 = Genre.create(:name => "moge", :icon_path => "img/test")
    entry1 = Entry.create(:native_name => "Genre/Entry test", :alpha_name => "G/E test")
    unless genre1.new_record? 
      genre1.entries.create(:native_name => "Genre/Entry test2", :alpha_name => "G/E test2")
    end
    
    puts genre1.entries.count
    genre1.entries << entry1
    puts genre1.entries.count

    # to test Review
    review_p = Review.create(:comment => "parent")
    review_c1 = Review.create(:comment => "child1", :parent => review_p)
    review_c2 = Review.create(:comment => "child2", :parent => review_p)
    review_c3 = Review.create(:comment => "child3", :parent => review_p)
    puts review_p.children.inspect
  end
end
