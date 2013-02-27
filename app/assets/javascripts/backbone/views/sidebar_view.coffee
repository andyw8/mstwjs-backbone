class TimeTravel.Views.SidebarView extends Backbone.View
  tagName: 'section',
  className: 'sidebar'

  initialize: ->
    _.bindAll this, 'render'

  render: ->
    renderedTemplate = TimeTravel.template('sidebar').render()
    @$el.html renderedTemplate
    @

