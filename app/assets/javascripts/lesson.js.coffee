$ ->
  $(document).on "click", "a.form_submitter", (e) ->
    e.preventDefault()
    form = $(this).closest("form")
    btn = $(this)
    btn.data "loading-text", "...bitte warten"
    btn.button "loading"
    form.submit()

  $(":input").keypress (e) ->
    if e.keyCode is 13 and not e.shiftKey
      e.preventDefault()
      form = $(this).closest("form")
      form.submit()

