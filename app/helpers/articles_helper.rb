module ArticlesHelper

    def article_params
        params.require(:article).permit(:title, :body, :rating, :address, :zipcode, :city, :state, :sport, :players, :latitude, :longitude, :tag_list, :image, :geo_address  )
    end


end
