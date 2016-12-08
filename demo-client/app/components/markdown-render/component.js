/* global marked hljs */

import Ember from 'ember';
// import hljs from 'hljs';

export default Ember.Component.extend({
  htmlizedMarkdown: Ember.computed('markdown', function () {
    return new Ember.Handlebars.SafeString(marked(this.get('markdown') || ""));
  })
});
