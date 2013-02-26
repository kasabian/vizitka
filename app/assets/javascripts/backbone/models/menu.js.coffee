class Vizitka.Models.Menu extends Backbone.Model
  paramRoot: 'menu'

  defaults:
    title: null
    name: null
    content: null

class Vizitka.Collections.MenusCollection extends Backbone.Collection
  model: Vizitka.Models.Menu
  url: '/menus'
