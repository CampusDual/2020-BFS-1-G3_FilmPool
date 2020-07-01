import { Component, OnInit } from '@angular/core';
import {DataService} from "../../services/data.service";
import {Observable} from "rxjs";
import {forEach} from "@angular/router/src/utils/collection";

@Component({
  selector: 'app-finder',
  templateUrl: './finder.component.html',
  styleUrls: ['./finder.component.scss'],
  providers: [DataService]
})
export class FinderComponent implements OnInit {
  public data$ = [];
  public keyword = "content_name";
  public notFound = "No se encuentra"
  constructor(private dataService :DataService) {

  }

  getData(){
     this.dataService.getAllContent().subscribe(response =>{
      response["data"].forEach(content=>{
        this.data$.push(content);
      })
     });
  }
  ngOnInit() {
      this.getData();
  }
  onSelected(item){
      //Cuando se selecciona un titulo de la lista este evento redirigira a componente
      //detalle de la misma, por ahora imprime nombre en consola
    console.log(item.content_name);
  }

}
