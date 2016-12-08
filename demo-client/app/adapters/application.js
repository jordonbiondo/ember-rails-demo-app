import DS from 'ember-data';
import Ember from 'ember';
import ENV from '../config/environment';
import _ from 'lodash';

export default DS.JSONAPIAdapter.extend({
  host: ENV.APP.host,
  
  namespace: 'api',

  pathForType: function(type) {
    let underscored = Ember.String.underscore(type);
    return Ember.String.pluralize(underscored);
  }
});
