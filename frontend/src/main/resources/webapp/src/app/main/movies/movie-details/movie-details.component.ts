import {Component, OnInit, ViewChild} from '@angular/core';
import { CastComponent } from 'app/shared/cast/cast.component';
import {ActivatedRoute} from "@angular/router";
import {DataService} from "../../../services/data.service";

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.scss']
})
export class MovieDetailsComponent implements OnInit {
  public  content;
  public cast = [];
  constructor(activatedRoute : ActivatedRoute, dataService : DataService) {
    activatedRoute.params.subscribe(params =>{
      dataService.getContByid(params["content_id"]).subscribe(response =>{
        this.content = response["data"][0];
      })
      dataService.getCastByContId(params["content_id"]).subscribe(response =>{
        this.cast = [];
        response["data"].forEach(actor =>{
          this.cast.push(actor);
        })
      })
    })

  }

  ngOnInit() {


  }




}
