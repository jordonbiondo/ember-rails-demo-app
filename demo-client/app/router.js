import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
    this.route("blog-post", function () {
      this.route('view', {path: 'view/:blog_post_id'});
      this.route('list');
      this.route('new');
      this.route('edit', {path: 'edit/:blog_post_id'});
    });
});

export default Router;
