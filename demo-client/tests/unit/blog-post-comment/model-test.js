import { moduleForModel, test } from 'ember-qunit';

moduleForModel('blog-post-comment', 'Unit | Model | blog post comment', {
  // Specify the other units that are required for this test.
  needs: []
});

test('it exists', function(assert) {
  var model = this.subject();
  // var store = this.store();
  assert.ok(!!model);
});