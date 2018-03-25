import { Component } from '@angular/core';

import { AboutPage } from '../about/about';
import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';

import { DetailsPage } from '../details/details';
import { ReviewPage } from '../review/review';
import { ReadingPage } from '../reading/reading';

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = DetailsPage;
  tab2Root = ReviewPage;
  tab3Root = ReadingPage;

  constructor() {

  }
}
