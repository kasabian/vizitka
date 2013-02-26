class Vizitka.Models.Gallery extends Backbone.Model
  paramRoot: 'gallery'

  defaults:
    name: null
    
    
  initialize: (options) =>
    @on('change:images', @parseImages)
    @parseImages()
 
  parseImages: =>
    json = @get('images')
    if @images
     @images.reset(json)
    else
     @images = new Vizitka.Collections.ImagesCollection(json)
     

class Vizitka.Collections.GallerysCollection extends Backbone.Collection
  model: Vizitka.Models.Gallery
  url: '/gallerys'
