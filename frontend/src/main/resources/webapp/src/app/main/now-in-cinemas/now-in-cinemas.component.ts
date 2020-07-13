import { Component, OnInit } from '@angular/core';
import {DataService} from "../../services/data.service";
import {TheMovieDB} from "./type";

@Component({
  selector: 'app-now-in-cinemas',
  templateUrl: './now-in-cinemas.component.html',
  styleUrls: ['./now-in-cinemas.component.scss']
})
export class NowInCinemasComponent implements OnInit {
  public eleList = []
  public urlImgConstructor = 'http://image.tmdb.org/t/p/w185/'
  constructor(private dataService: DataService) { }

  ngOnInit() {
    this.dataService.getPeliculasLive().subscribe(response=>{
      response["results"].forEach(e => {
        let theMovieDBitem: TheMovieDB = {
              image : this.urlImgConstructor + e.poster_path,
              title : e.title,
              adult : e.adult,
              rating : e.vote_average,
              date : e.release_date,
              plot : e.overview
      }
      this.eleList.push(theMovieDBitem);
      })
        }

    )
  }

}
