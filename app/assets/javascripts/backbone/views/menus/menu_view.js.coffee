Vizitka.Views.Menus ||= {}

class Vizitka.Views.Menus.MenuView extends Backbone.View
  template: JST["backbone/templates/menus/menu"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
