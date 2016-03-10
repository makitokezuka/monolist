class RankingController < ApplicationController
    
def have
    @rankings = Have.group(:item_id).limit(10).order('count_item_id desc').count('item_id')
    @rankings.transform_keys!{|key| Item.find(key)}
    
end

def want
    @rankings = Want.group(:item_id).limit(10).order('count_item_id desc').count('item_id')
    @rankings.transform_keys!{|key| Item.find(key)}

end


end
