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

  public URL_API = "http://localhost:33333/contents/content?columns=content_name,content_id"
  constructor(private http:HttpClient) { }

  getAllContent(): Observable<any[]>{
    return this.http.get<any>(this.URL_API, this.httOptions)
  }
}
