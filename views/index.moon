import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    h1 "Breweries"

    for brewery in *@breweries
      div brewery.name
