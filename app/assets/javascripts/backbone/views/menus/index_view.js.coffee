Vizitka.Views.Menus ||= {}

class Vizitka.Views.Menus.IndexView extends Backbone.View
  template: JST["backbone/templates/menus/index"]

  initialize: () ->
    @options.menus.bind('reset', @addAll)

  addAll: () =>
    @options.menus.each(@addOne)

  addOne: (menu) =>
    view = new Vizitka.Views.Menus.MenuView({model : menu})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(menus: @options.menus.toJSON() ))
    @addAll()

    return this
