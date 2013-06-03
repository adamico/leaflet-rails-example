class Office < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :details, :name, :postal, :state, :lat, :lon

  after_validation :geocode, if: :name_changed?

  private

  require "cloudmade"
  include CloudMade

  def geocode
    apikey = ENV['CLOUDMADE_API_KEY']
    cm = Client.from_parameters(apikey)
    results = cm.geocoding.find([name, city, country].join(", "))
    if results.found
      centroid = results.results[0].centroid
      lat = centroid.lat
      lon = centroid.lon
    end
  end
end
