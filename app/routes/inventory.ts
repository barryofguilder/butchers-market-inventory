import Route from '@ember/routing/route';

export type InventoryItem = {
  id: string;
  name: string;
  category: string;
  parrLevel: number;
  quantity: number;
};

export default class InventoryRoute extends Route {
  model() {
    return [
      {
        id: '1',
        name: 'Ribeyes',
        category: 'Table 1',
        parrLevel: 3,
        quantity: 1,
      },
      {
        id: '2',
        name: 'NY Strips',
        category: 'Table 1',
        parrLevel: 3,
        quantity: 2,
      },
      {
        id: '3',
        name: 'Filets',
        category: 'Table 1',
        parrLevel: 2,
        quantity: 1,
      },
      {
        id: '4',
        name: 'Chuck Roast',
        category: 'Table 1',
        parrLevel: 6,
        quantity: 4,
      },
      {
        id: '5',
        name: 'Lettuce',
        category: 'Table 1-1',
        parrLevel: 1,
        quantity: 0,
      },
      {
        id: '6',
        name: 'Tomatoes',
        category: 'Table 1-1',
        parrLevel: 4,
        quantity: 2,
      },
      {
        id: '7',
        name: 'Onion',
        category: 'Table 1-1',
        parrLevel: 2,
        quantity: 1,
      },
      {
        id: '8',
        name: 'Cabbage',
        category: 'Table 1-1',
        parrLevel: 2,
        quantity: 1,
      },
    ] as InventoryItem[];
  }
}
