import { Component, OnInit } from '@angular/core';
import {DataService} from "../../../services/data.service";

@Component({
  selector: 'app-list-movies',
  templateUrl: './list-movies.component.html',
  styleUrls: ['./list-movies.component.scss']
})
export class ListMoviesComponent implements OnInit {

  public peliculas = [];
  constructor(private dataService : DataService) { }

  ngOnInit() {
    this.getNewMovies()
  }
  getNewMovies(){
    this.dataService.getMejoresPeliculas().subscribe(response =>{
      response["data"].forEach(e=>{
        this.peliculas.push(e)
      })
    })
  }

}
