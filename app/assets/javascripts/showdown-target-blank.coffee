do ->
  'use strict'

  targetblank = ->
    [ {
      type: 'output'
      regex: '<a(.*?)>'
      replace: (match, content) ->
        '<a target="_blank"' + content + '>'

    } ]

  # Client-side export
  if typeof window != 'undefined' and window.showdown and window.showdown.extensions
    window.showdown.extension 'targetblank', targetblank
  # Server-side export
  if typeof module != 'undefined'
    module.exports = targetblank
  return
