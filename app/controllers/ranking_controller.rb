class RankingController < ApplicationController
    
def have
    @rankings = Ownership.where(type: "Want").group(:item_id)limit(10).order('count_item_id desc').count('item_id').keys
    
    #@items = Item.all
    #@items.each do |item|
    #    @item = Item.find(item.id)
    #    @item.have_point = item.have_users.count
    #    @item.save
    #end
    #@rankings = Item.order("have_point desc").limit(10)
end

def want
        
    @items = Item.all
    @items.each do |item|
        @item = Item.find(item.id)
        @item.want_point = item.want_users.count
        @item.save
    end
    @rankings = Item.order("want_point desc").limit(10)
end


end
