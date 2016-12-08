import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  body: DS.attr('string'),
  blogPostComments: DS.hasMany('blog-post-comments', {async: true})
});
