class Band < ApplicationRecord
    def self.search(keyword)
        Band.where('bandname LIKE ?',"%#{keyword}%")
    end
    has_many :band_festival_relations, dependent: :destroy
    #tweetsテーブルから中間テーブルを介してTagsテーブルへの関連付け
    has_many :festivals, through: :band_festival_relations, dependent: :destroy
end
