Vizitka.Views.Menus ||= {}

class Vizitka.Views.Menus.ShowView extends Backbone.View
  template: JST["backbone/templates/menus/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
