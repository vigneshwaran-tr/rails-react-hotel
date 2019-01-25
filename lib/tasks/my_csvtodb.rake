namespace :my_csvtodb do
  desc "TODO"
  task hotels_add: :environment do

    path =Rails.root.join('public', 'coimbatore_hotels.csv').to_s
    csv = Roo::CSV.new(path)
    hoteldb = []
    csv.each do |x|
      if x[0] != "HotelID"
        imagepath ="https://ui.cltpstatic.com/places/hotels"+x[9];
        hoteldb << { :hotelid => x[0], :hotelname => x[1], :star => x[2], :tarating => x[3], :reviewcount => x[4], :price => x[5], :locality => x[6], :country => x[7], :city => x[8], :thumb => imagepath, :description => x[10]}
      end
    end

    Search.bulk_insert values: hoteldb
  end

  end


