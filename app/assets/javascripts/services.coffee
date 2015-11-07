targetBlankRenderer = new (marked.Renderer)
targetBlankRenderer.link = (href, title, text) ->
  external = undefined
  newWindow = undefined
  out = undefined
  external = /^https?:\/\/.+$/.test(href)
  newWindow = external or title == 'newWindow'
  out = '<a href="' + href + '"'
  if newWindow
    out += ' target="_blank"'
  if title and title != 'newWindow'
    out += ' title="' + title + '"'
  out += '>' + text + '</a>'

class ServiceForm
  constructor: ->
    @provider = $("#service_provider_id")
    @setProvider()
    @provider.on "change", @setProvider

    @provider.select2
      placeholder: "Choose a service",
      theme: "bootstrap",
      templateResult: @providerTemplate,
      templateSelection: @providerTemplate

    @provider.select2('open') if @provider.attr("autofocus")

  setProvider: (e) =>
    selected = @provider.find("option:selected")
    value = selected.data("omniauth")
    if value
      field = $("[data-behavior='provider']")
      url   = "#{field.data("root-url")}auth/#{value}/callback"
      field.val(url)

      $(".service-fields").show()
      #$(".instructions").html(marked(selected.data("instructions")))

  providerTemplate: (provider) ->
    return provider.text if (!provider.id)
    $("<span><img src='https://logo.clearbit.com/#{$(provider.element).data("domain")}' class='img-rounded service-logo-sm' /> #{provider.text}</span>")

jQuery ->
  marked.setOptions({gfm: true, renderer: targetBlankRenderer})
  new ServiceForm

