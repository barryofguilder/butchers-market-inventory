import { module, test } from 'qunit';
import { setupTest } from 'butchers-market-inventory/tests/helpers';

module('Unit | Route | inventory', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    const route = this.owner.lookup('route:inventory');
    assert.ok(route);
  });
});
