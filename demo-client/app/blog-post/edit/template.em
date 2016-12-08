.container-fluid.container-fullw.bg-white
  .col-md-6.col-sm-12
    = if errors
      .alert.alert-danger data-ct-dismiss="alert"
        = each errors as |error|
          p
            = error
    fieldset
      legend
        = if model.isNew
          |Creating New Blog Post
        = else
          |Updating Blog Post
      button.btn.btn-primary.pull-right{action 'saveClicked'} disabled=model.isSaving
        = if model.isNew
          |Create Blog Post
        = else
          |Save Blog Post
      br
      .row
        .col-lg-4
          .form-group class={model.errors.title:has-error}
            label
              |Title
            = input type="text" value=model.title placeholder="Title" class="form-control"
      .row
        .col-lg-12
          .form-group class={model.errors.body:has-error}
            label
              |Body
            = textarea type="text" value=model.body placeholder="Body" class="form-control blog-edit-body-area"
  .col-md-6.col-sm-12
    h2
      | Live Blog Preview
    .panel.panel-default
      .panel-heading
        h3 
          = model.title
      .panel-body
        p
          = markdown-render markdown=model.body
