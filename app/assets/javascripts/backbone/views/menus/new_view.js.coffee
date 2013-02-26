Vizitka.Views.Menus ||= {}

class Vizitka.Views.Menus.NewView extends Backbone.View
  template: JST["backbone/templates/menus/new"]

  events:
    "submit #new-menu": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (menu) =>
        @model = menu
        window.location.hash = "/#{@model.id}"

      error: (menu, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
