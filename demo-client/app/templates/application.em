.container-fluid
  .row
    .col-xs-12
      h1#title.display-1
        | Simple Blog Demo
      hr
      .col-sm-3.col-md-2
        .btn-group-vertical.side-bar-buttons
          = link-to 'blog-post.list' class="btn btn-primary"
            i.fa.fa-pencil
            | View Blog Posts
          = link-to 'blog-post.new' class="btn btn-primary"
            | Create Blog Post
      .col-sm-9.col-md-10
        = outlet
