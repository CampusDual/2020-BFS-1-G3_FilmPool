import { Component, OnInit } from '@angular/core';
import {DataService} from "../../services/data.service";
import {Observable} from "rxjs";
import {forEach} from "@angular/router/src/utils/collection";
import {ActivatedRoute, Router} from "@angular/router";

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
  constructor(private dataService :DataService, private router : Router) {

  }

  getData(){
     this.dataService.getBuscador().subscribe(response =>{
      response["data"].forEach(content=>{
        this.data$.push(content);
      })
     });
  }
  ngOnInit() {
      this.getData();
  }
  onSelected(item){
    this.router.navigate(["/main/movies/",item.content_id])
  }

}
