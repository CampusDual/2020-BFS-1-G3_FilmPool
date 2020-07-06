import { Component, OnInit } from '@angular/core';
import {DataService} from "../../../services/data.service";

@Component({
  selector: 'app-shows-home',
  templateUrl: './shows-home.component.html',
  styleUrls: ['./shows-home.component.scss']
})
export class ShowsHomeComponent implements OnInit {

  public series = [];

  constructor(private dataService: DataService) {
  }

  ngOnInit() {
    this.getNewMovies()
  }

  getNewMovies() {
    this.dataService.getUltimasSeries().subscribe(response => {
      response["data"].forEach(e => {
        this.series.push(e)
      })
    })
  }
}
