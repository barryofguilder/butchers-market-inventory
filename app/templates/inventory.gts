import RouteTemplate from 'ember-route-template';
import Component from '@glimmer/component';
import type { TOC } from '@ember/component/template-only';
import type { InventoryItem } from 'butchers-market-inventory/routes/inventory';
// TODO: Add types for this
// @ts-ignore
import groupBy from 'ember-composable-helpers/helpers/group-by';
import { pageTitle } from 'ember-page-title';

interface InventoryRouteSignature {
  Args: {
    model: InventoryItem[];
  };
}

const ItemCount: TOC<{
  Args: { label: string; count: number; isTextField?: boolean };
}> = <template>
  <div class='flex flex-col'>
    {{#if @isTextField}}
      <div>
        <label class='block text-sm text-gray-500'>
          {{@label}}
        </label>
        <div class='mt-2'>
          <input
            type='text'
            class='block w-full rounded-md border-0 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600'
            value={{@count}}
          />
        </div>
      </div>
    {{else}}
      <span class='text-gray-500 text-sm'>{{@label}}</span>
      <span class='mt-2 py-1.5'>{{@count}}</span>
    {{/if}}
  </div>
</template>;

@RouteTemplate
export default class InventoryTemplate extends Component<InventoryRouteSignature> {
  foo = 'bar';

  <template>
    {{pageTitle 'Inventory'}}

    <div class='flex flex-col gap-8'>
      {{#each-in (groupBy 'category' @model) as |category items|}}
        <div>
          <h3 class='font-bold text-lg border-b'>{{category}}</h3>
          <ul class='mt-3 flex flex-col gap-3'>
            {{#each items as |item|}}
              <li class='bg-white drop-shadow-sm p-2 flex flex-col gap-2'>
                <div class='uppercase tracking-wide font-medium'>
                  {{item.name}}
                </div>
                <div class='grid grid-cols-2 gap-6'>
                  <ItemCount
                    @label='Quantity in Stock'
                    @count={{item.quantity}}
                    @isTextField={{true}}
                  />
                  <ItemCount @label='Parr Level' @count={{item.parrLevel}} />
                </div>
              </li>
            {{/each}}
          </ul>
        </div>
      {{/each-in}}
    </div>
  </template>
}
