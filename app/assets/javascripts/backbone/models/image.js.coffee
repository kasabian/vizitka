class Vizitka.Models.Image extends Backbone.Model
  paramRoot: 'image'

  defaults:
    image: null
    title: null

class Vizitka.Collections.ImagesCollection extends Backbone.Collection
  model: Vizitka.Models.Image
  url: '/images'
