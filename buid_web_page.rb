require_relative 'request'
require_relative 'components'

characters = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=d3oToBrLOkQah6vX1bpJLGBT5di7xKfjOgs32K0L")

File.write("./index.html" , template(characters))