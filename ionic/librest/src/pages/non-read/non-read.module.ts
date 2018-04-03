import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { NonReadPage } from './non-read';

@NgModule({
  declarations: [
    NonReadPage,
  ],
  imports: [
    IonicPageModule.forChild(NonReadPage),
  ],
})
export class NonReadPageModule {}
