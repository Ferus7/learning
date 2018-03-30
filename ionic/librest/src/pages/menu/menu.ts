import { Component } from '@angular/core';
import { MenuController } from 'ionic-angular';

/**
 * Generated class for the MenuPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

//@IonicPage()
@Component({
  selector: 'page-menu',
  templateUrl: 'menu.html',
})
export class MenuPage {

  constructor(public menuCtrl: MenuController) {

  }

  openMenu() {
  	this.menuCtrl.open();
  }

  closeMenu() {
  	this.menuCtrl.close();
  }

  toggleMenu() {
  	this.menuCtrl.toggle();
  }

  // ionViewDidLoad() {
  //   console.log('ionViewDidLoad MenuPage');
  // }

}
