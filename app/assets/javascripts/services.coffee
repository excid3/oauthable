$(document).on 'page:change', (event) ->
  $(".select2").select2
    theme: "bootstrap"

class ServiceForm
  constructor: ->
    @provider = $("#service_provider_id")
    @setProvider()
    @provider.on "change", @setProvider

  setProvider: (e) =>
    value = @provider.find("option:selected").data("omniauth")
    $("[data-behavior='provider']").text(value)

jQuery ->
  new ServiceForm
