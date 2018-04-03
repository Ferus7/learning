import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { TabsPage } from '../pages/tabs/tabs';
import { MyBooksPage } from '../pages/myBooks/myBooks';

import { DetailsPageModule } from '../pages/details/details.module';
import { ReviewPageModule } from '../pages/review/review.module';
import { ReadingPageModule } from '../pages/reading/reading.module';
import { AllPageModule } from '../pages/all/all.module';
import { ReadPageModule } from '../pages/read/read.module';
import { NonReadPageModule } from '../pages/non-read/non-read.module';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

@NgModule({
  declarations: [
    MyApp,
    TabsPage,
    MyBooksPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    DetailsPageModule,
    ReviewPageModule,
    ReadingPageModule,
    AllPageModule,
    ReadPageModule,
    NonReadPageModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    TabsPage,
    MyBooksPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}
