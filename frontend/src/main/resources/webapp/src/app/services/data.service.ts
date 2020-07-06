import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable( {
    providedIn: 'root'
})
export class DataService {
    httpOptions = {
        headers : new HttpHeaders({
            'Authorization': 'Basic ZGVtbzpkZW1vdXNlcg=='

        })
    }
    public URL_API = "http://localhost:33333/cast/cast?columns=cast_name"
    constructor(private http:HttpClient) {}

    getAllContent(): Observable<any[]> {
        return this.http.get<any>(this.URL_API, this.httpOptions)
    }
}