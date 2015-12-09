converter = new showdown.Converter
  simplifiedAutoLink: true
  extensions: ['targetblank']

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
      console.log converter.makeHtml(selected.data("instructions"))
      $(".instructions").html converter.makeHtml(selected.data("instructions"))

  providerTemplate: (provider) ->
    return provider.text if (!provider.id)
    $("<span><img src='https://logo.clearbit.com/#{$(provider.element).data("domain")}' class='img-rounded service-logo-sm' /> #{provider.text}</span>")

jQuery ->
  new ServiceForm

