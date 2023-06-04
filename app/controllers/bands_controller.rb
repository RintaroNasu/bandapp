class BandsController < ApplicationController
  
  def index
    @bands = Band.all
  end
  def new
    @band = Band.new
  end
  def band_info
    @bands =Band.all
  end
  def live_info
    # if params[:word]  
    #   keywords = params[:word].split(/[[:blank:]]+/).select(&:present?)
    # end
    # # 空のモデルオブジェクト作成（何も入っていない空配列のようなもの）
    # @band_list = Band.none

    # if params[:word]  
    #     keywords.each do |keyword|
    #       @band_list = @band_list.or(Band.where("name LIKE ?", "%#{keyword}%"))
    #     end
    #     @band_list.each do |list|
    #       list.each do |fes|

    #       end
    
    #     end
    # end
    if params[:word]
      @w_params = params[:word]
      @livelist = []
      params[:word].each do |key,value|
        if value == "1"
          band_fes = Band.where(name: key)
          # find&find_byはレコードとってくる
          # whereは配列で取ってくる
          fes_list = []
          band_fes.each do |b|
            fes_list.concat(b.festivals)
          end
          @livelist = @livelist.empty? ? fes_list : @livelist & fes_list
        end
      end
    end
  end
  def create
    band = Band.new(band_params)
    if band.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end
  def show
  end
  private
  def band_params
    params.require(:band).permit(:name, festival_ids: [])
  end
end
