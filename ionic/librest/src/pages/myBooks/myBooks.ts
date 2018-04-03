import { Component } from '@angular/core';

import { AllPage } from '../all/all';
import { ReadPage } from '../read/read';
import { NonReadPage } from '../non-read/non-read';



@Component({
  templateUrl: 'myBooks.html'
})
export class MyBooksPage {

  tab1Root = AllPage;
  tab2Root = ReadPage;
  tab3Root = NonReadPage;

  constructor() {

  }
}
