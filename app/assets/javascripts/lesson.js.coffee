$ ->
  $(document).on "click", "a.form_submitter", (e) ->
    e.preventDefault()
    form = $(this).closest("form")
    btn = $(this)
    btn.data "loading-text", "...bitte warten"
    btn.button "loading"
    form.submit()
