class TimeTravel.Views.TopNavigationView extends Backbone.View
  tagName: 'nav'
  className: 'top-nav'

  initialize: ->
    # needed? spec still passes without
    _.bindAll this, 'render'

  render: ->
    renderedTemplate = TimeTravel.template('top_nav').render()
    @$el.html renderedTemplate
    @

