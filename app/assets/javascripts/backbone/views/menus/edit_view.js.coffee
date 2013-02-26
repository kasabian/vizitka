Vizitka.Views.Menus ||= {}

class Vizitka.Views.Menus.EditView extends Backbone.View
  template : JST["backbone/templates/menus/edit"]

  events :
    "submit #edit-menu" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (menu) =>
        @model = menu
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
