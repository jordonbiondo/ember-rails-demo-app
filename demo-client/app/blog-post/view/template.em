.blog-view-container.container
  = link-to "blog-post.list"
     | Back to Blog Post List
  hr
  .panel.panel-default
    .panel-heading
      h3 
        = model.title
        = link-to "blog-post.edit" model.id class="btn btn-primary pull-right"
          | Edit
    .panel-body
      = markdown-render markdown=model.body
  h3 
    | Comments
  = each model.blogPostComments as |comment|
    .panel.panel-default
      .panel-body.comment-body
        a.username-link
          | @username
        = comment.body
