import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {Observable} from "rxjs";

@Injectable({
  providedIn: 'root'
})
export class DataService {

  httOptions = {
    headers : new HttpHeaders({
      'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg=='
    })
  }

  public urlBuscador = "http://localhost:33333/contents/content?columns=content_name,content_id"
  public urlUltimasPeliculas = "http://localhost:33333/contents/latestMovies?columns=content_name,content_id,content_poster_path,content_total_rating,content_total_vote,content_release_date"
  constructor(private http:HttpClient) { }

  getBuscador(): Observable<any[]>{
    return this.http.get<any>(this.urlBuscador, this.httOptions)
  }
  getUltimasPeliculas() : Observable<any[]>{
   const postBody = {"columns": [
           "content_name","content_id","content_poster_path","content_total_rating","content_total_vote","content_plot","content_release_date"
      ]
    }
    return this.http.post<any>(this.urlUltimasPeliculas,postBody, this.httOptions);
  }
}
