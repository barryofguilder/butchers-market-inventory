import '@glint/environment-ember-loose';
import '@glint/environment-ember-template-imports';

import type PageTitle from 'ember-page-title/template-registry';

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry extends PageTitle {
    /* your local loose-mode entries here */
  }
}
