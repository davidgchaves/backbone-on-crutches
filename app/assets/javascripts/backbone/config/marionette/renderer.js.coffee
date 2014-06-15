Backbone.Marionette.Renderer.render = (template, data) ->
  default_path_for_template = JST["backbone/apps/" + template]
  unless default_path_for_template
    throw "Template #{template} not found!"
  default_path_for_template(data)
