# README
This API receives latitude and longitude coordinates and spits out a list of museums nearby.
This API was built using rails API-only application. See more [here](https://guides.rubyonrails.org/v5.0/api_app.html)

# How to use

1. Fork this repository
2. Sign up to [mapbox](https://docs.mapbox.com/help/tutorials/get-started-tokens-api/) and register for free to get an API key
3. Create a .env file in the root folder of the rails app
4.  MAPBOX_API_KEY=pk.blablabla
5. Run  rails s from root
6. In another terminal run:    curl http://localhost:3000/museums\?lat\=103.842656\&lng\=1.2871406
7. Receive a .json response
