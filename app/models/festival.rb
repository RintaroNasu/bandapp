class Festival < ApplicationRecord
    validates :name, presence: true
    #Tagsテーブルから中間テーブルに対する関連付け
    has_many :band_festival_relations, dependent: :destroy
    #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
    has_many :bands, through: :band_festival_relations, dependent: :destroy
    
end
