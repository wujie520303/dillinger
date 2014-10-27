
'use strict'

module.exports =
  angular
  .module('diBase.directives.settingsToggle', [])
  .directive 'settingsToggle',
  () ->

    directive =
      link: (scope, el, attrs) ->

        $body    = angular.element(document).find('body')
        $overlay = angular.element(document).find('.overlay')

        el.bind 'click', ->
          el.toggleClass('open')
          $body.toggleClass('show-settings')

        $overlay.bind 'click', ->
          if $body.hasClass 'show-settings'
            el.toggleClass('open')
            $body.toggleClass('show-settings')

    return directive
