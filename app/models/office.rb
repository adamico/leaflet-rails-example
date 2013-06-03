class Office < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :details, :name, :postal, :state, :lat, :lon

  # populate latitude and longitude fields using cloudmade geocoding api when address1 changes
  after_validation :geocode, if: :address1_changed?

  private

  require "cloudmade"
  include CloudMade

  def geocode
    # more details at https://github.com/CloudMade/Tools/tree/master/Ruby%20API#geocoding---find-geoobjects-like-city-street-or-point-of-interests
    apikey = ENV['CLOUDMADE_API_KEY']
    cm = Client.from_parameters(apikey)
    results = cm.geocoding.find([address1, city, country].join(", "))
    if results.found
      centroid = results.results[0].centroid
      self.lat = centroid.lat
      self.lon = centroid.lon
    end
  end
end
