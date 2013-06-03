Example Rails 3 app originally created for the bounty https://bountify.co/embed-leaflet-in-a-rails-application

In order for the cloudmade integration to work you need to create an account and set the 'CLOUDMADE_API_KEY' environment variable.

To get the app started :

```
$ rake db:migrate
$ rake db:seed
$ rails s
```

The markers for each Office instance get latitude and longitude values from the 'lat' and 'lon' columns of the offices table.
These columns get populated using the Cloudmade api by means of the corresponding ruby gem when the 'address1' attribute value changes.
By default the attributes used to get the geocoding coordinates are 'address1', 'city' and 'country' but they can be easily changed if needed by modifying the "#geocode" method in the office model.
