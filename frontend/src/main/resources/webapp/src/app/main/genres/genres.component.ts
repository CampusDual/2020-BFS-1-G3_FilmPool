import { Component, OnInit } from '@angular/core';
import {DataService} from "../../services/data.service";

@Component({
  selector: 'app-genres',
  templateUrl: './genres.component.html',
  styleUrls: ['./genres.component.scss']
})
export class GenresComponent implements OnInit {
  public genres = []
  public movies = []
  public selectedGenreId: number;
  public showMovies = false;
  constructor(private dataService: DataService) { }

  ngOnInit() {
    this.dataService.getGenres().subscribe(r =>{
      r["data"].forEach(e => {
        this.genres.push(e)
      })
    })
  }
  genreSelected(){
      console.log(this.selectedGenreId)
     if (this.selectedGenreId<=0){
       this.showMovies=false
       this.movies =[]
     }
     else{
       this.showMovies=true
       this.movies =[]
       this.dataService.getContentByGenre(this.selectedGenreId).subscribe(r =>{
         r["data"].forEach(e => {
           this.movies.push(e)
         })
       })
     }

  }
}
