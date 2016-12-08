import Ember from 'ember';
import _ from 'lodash';

export default Ember.Route.extend({
  model: function (params) {
    return this.store.find('blog-post', params.blog_post_id);
  },
  
  actions: {
    saveClicked: function () {
      this.currentModel
        .save()
        .then((saved) => this.transitionTo('blog-post.view', saved.get('id')));
    }
  }
});
