lapis = require "lapis"

import Model from require "lapis.db.model"

class Breweries extends Model

lapis.serve class extends lapis.Application
  [index: "/"]: =>
    @breweries = Breweries\select!
    render: true

  [new: "/new"]: =>
    Breweries\create name: @params.name, description: "Brewery In Vermont"
    redirect_to: @url_for "index"
