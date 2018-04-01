import { Component } from '@angular/core';

/*Vamos usar decorator, para passar informações(metadados) para o compildor*/
@Component({
	selector: 'meu-primeiro-component',
	template: `
		<p>Meu Primeiro Component com Angular 2!</p>
	`
})

export class MeuPrimeiroComponent { }
