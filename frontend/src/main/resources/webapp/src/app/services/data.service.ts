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
    public urlMejoresPeliculas = "http://localhost:33333/contents/bestMoviesRating?columns=content_name,content_id,content_poster_path,content_total_rating,content_total_vote,content_release_date"
    public urlMejoresSeries = "http://localhost:33333/contents/bestShowsRating?columns=content_name,content_id,content_poster_path,content_total_rating,content_total_vote,content_release_date"
    public urlUltimasPeliculas = "http://localhost:33333/contents/latestMovies?columns=content_name,content_id,content_poster_path,content_total_rating,content_total_vote,content_release_date"
    public urlUltimasSeries = "http://localhost:33333/contents/latestShows?columns=content_name,content_id,content_poster_path,content_total_rating,content_total_vote,content_release_date"
    public urlContByid = "http://localhost:33333/contents/content/search"
    public urlCastById = "http://localhost:33333/cast/cast/search"
    public urlCastByContId = "http://localhost:33333/cast/castByContentId/search"

    public urlBuscadorGeneros = "http://localhost:33333/genres/genres?columns=genre_id,genre_name"
    public urlBuscadorGeneros2 = "http://localhost:33333/contents/generos"


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
    getUltimasSeries() : Observable<any[]>{
        const postBody = {"columns": [
                "content_name","content_id","content_poster_path","content_total_rating","content_total_vote","content_plot","content_release_date"
            ]
        }
        return this.http.post<any>(this.urlUltimasSeries,postBody, this.httOptions);
    }
    getMejoresPeliculas() : Observable<any[]>{
        const postBody = {"columns": [
                "content_name","content_id","content_poster_path","content_total_rating", "content_total_vote","content_plot", "content_release_date"
            ]
        }
        return this.http.post<any>(this.urlMejoresPeliculas,postBody, this.httOptions);
    }
    getMejoresSeries() : Observable<any[]>{
        const postBody = {"columns": [
                "content_name","content_id","content_poster_path","content_total_rating","content_total_vote","content_plot","content_release_date"
            ]
        }
        return this.http.post<any>(this.urlMejoresSeries,postBody, this.httOptions);
    }
    getContByid(content_id : Number) : Observable<any[]>{
        const postBody = {
            "filter": {
                "content_id": +content_id
            },
            "columns": [
                "content_name","content_id","content_poster_path","content_total_rating",
                "content_total_vote","content_plot",
                "content_release_date","content_trailer","content_nationality","content_type",
                "content_duration"
            ]
        }
        return this.http.post<any>(this.urlContByid,postBody, this.httOptions);
    }
    getCastById(cast_id : Number) : Observable<any[]>{
        const postBody = {
            "filter": {
                "cast_id": +cast_id
            },
            "columns": [
                "cast_id","cast_name","cast_birth_date","cast_dead_date"
                ,"cast_birth_place","cast_nationality","cast_pic"
            ]
        }
        return this.http.post<any>(this.urlCastById,postBody, this.httOptions);
    }
    getCastByContId(content_id : Number) : Observable<any[]>{
        const postBody = {
            "filter": {
                "content_id": +content_id
            },
            "columns": [
                "cast_name","cast_id"
            ]
        }
        return this.http.post<any>(this.urlCastByContId,postBody, this.httOptions);
    }
//Forma1
    getBuscadorGeneros(): Observable<any[]>{
        return this.http.get<any>(this.urlBuscadorGeneros, this.httOptions)
    }
//Forma2
    getBuscadorGeneros2(genre_id : Number) : Observable<any[]>{
        const postBody = {
            "filter": {
                "genre_id": +genre_id
            },
            "columns": [
                "content_poster_path"
            ]
        }
        return this.http.post<any>(this.urlBuscadorGeneros2,postBody, this.httOptions);
    }



}
