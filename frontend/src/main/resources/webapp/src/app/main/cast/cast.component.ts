import { Component, OnInit } from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {DataService} from "../../services/data.service";

@Component({
  selector: 'app-cast',
  templateUrl: './cast.component.html',
  styleUrls: ['./cast.component.scss']
})
export class CastComponent implements OnInit {
  public cast;
  constructor(activatedRoute : ActivatedRoute, dataService : DataService) {
    activatedRoute.params.subscribe(params =>{
          dataService.getCastById(params["cast_id"]).subscribe(response=>{
            this.cast = response["data"][0];
          })
    })
  }

  ngOnInit() {
  }

}
