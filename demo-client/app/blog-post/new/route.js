import Ember from 'ember';
import _ from 'lodash';

export default Ember.Route.extend({
  model: function (params) {
    return this.store.createRecord('blog-post');
  },
  
  actions: {
    saveClicked: function () {
      this.currentModel
        .save()
        .then((saved) => this.transitionTo('blog-post.list'));
    }
  }
});
