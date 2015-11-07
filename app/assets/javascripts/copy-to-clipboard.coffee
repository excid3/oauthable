class ClipboardButton
  constructor: (selector) ->
    copy_buttons = $(selector)
    clipboard    = new Clipboard(selector)

    clipboard.on 'success', (e) ->
      $(e.trigger).tooltip("show")

    copy_buttons.on 'mouseleave', ->
      $(this).tooltip("hide")

jQuery ->
  new ClipboardButton(".btn-copy")
