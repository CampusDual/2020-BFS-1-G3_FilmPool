import { Component, OnInit } from '@angular/core';
import {DataService} from "../../../services/data.service";

@Component({
  selector: 'app-list-shows',
  templateUrl: './list-shows.component.html',
  styleUrls: ['./list-shows.component.scss']
})
export class ListShowsComponent implements OnInit {

  public series = [];
  constructor(private dataService : DataService) { }

  ngOnInit() {
    this.getNewMovies()
  }
  getNewMovies(){
    this.dataService.getMejoresSeries().subscribe(response =>{
      response["data"].forEach(e=>{
        this.series.push(e)
      })
    })
  }
}
