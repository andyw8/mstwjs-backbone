TimeTravel.Views.SidebarView = Backbone.View.extend(
  tagName: 'section',
  className: 'span-4'

  initialize: ->
    _.bindAll this, 'render'

  render: ->
    renderedTemplate = TimeTravel.template('sidebar').render()
    @$el.html renderedTemplate
    @
)
