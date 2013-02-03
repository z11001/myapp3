class SpotsController < ApplicationController
  def index
    render 'index'    
  end

  def create
   #重複なしでスポット名だけをとってくる
   @spots = Spots.select('spotname').where('spotname like ?', "%"+params[:spot_str]+"%").uniq

   #重複ありでスポットIDも一緒にとってくる
   #@spots = Spots.where('spotname like ?', "%"+params[:spot_str]+"%")

   respond_to do |format|
     format.html
     format.json { render json: @spots }
   end
  end

  def show

  end
end

