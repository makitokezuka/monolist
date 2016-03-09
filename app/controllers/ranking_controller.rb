class RankingController < ApplicationController
    
def have
    @rankings = Ownership.where(type: "Have").group(:item_id).limit(10).order('count_item_id desc').count('item_id').keys


end

def want
    @rankings = Ownership.where(type: "Want").group(:item_id).limit(10).order('count_item_id desc').count('item_id').keys

end


end
