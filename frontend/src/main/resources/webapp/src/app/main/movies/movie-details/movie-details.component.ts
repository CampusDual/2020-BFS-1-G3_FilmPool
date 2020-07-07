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
  constructor(activatedRoute : ActivatedRoute, dataService : DataService) {
    activatedRoute.params.subscribe(params =>{
      dataService.getContByid(params["content_id"]).subscribe(response =>{
        this.content = response["data"][0];
      })
    })

  }

  ngOnInit() {


  }




}
