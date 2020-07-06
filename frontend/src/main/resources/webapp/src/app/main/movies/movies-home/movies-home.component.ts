import { Component, OnInit } from '@angular/core';
import {DataService} from "../../../services/data.service";

@Component({
  selector: 'app-movies-home',
  templateUrl: './movies-home.component.html',
  styleUrls: ['./movies-home.component.scss']
})
export class MoviesHomeComponent implements OnInit {
  public peliculas = [];
  constructor(private dataService : DataService) { }

  ngOnInit() {
    this.getNewMovies()
  }
  getNewMovies(){
    this.dataService.getUltimasPeliculas().subscribe(response =>{
      response["data"].forEach(e=>{
        this.peliculas.push(e)
      })
    })
  }

}
