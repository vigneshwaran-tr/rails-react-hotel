class SearchController < ApplicationController
    def index
        # binding.pry
        hotel_name = params[:hotelname]
        hotel_rating = params[:hotelrating]
        hotel_location = params[:hotellocation]
        @search=Search.where("hotelname LIKE '%#{hotel_name}%' AND star LIKE '%#{hotel_rating}%' AND city LIKE '%#{hotel_location}%'")
       
        
        render :json =>{results: @search }

    end

    def enquiry
        hotel_id = params[:hotelid]
        @search=Search.where("hotelid LIKE '%#{hotel_id}%'")
      
        render :json =>{results: @search }
    end

    def add
        hotel_id = params[:hotelid]
        hotel_name = params[:hotelname]
        cust_name = params[:custname]
        cust_email = params[:custemail]
        cust_country = params[:custcountry]
        cust_phone = params[:custphone]
        room_req = params[:roomreq]
        @add=Add.new(article_params)
        @add.save
        render :json =>{status: 200 }
    end
    private
    def article_params 
        params.permit(:hotelid,:hotelname, :custname, :custemail, :custcountry, :custphone, :roomreq)
    end
    
end
