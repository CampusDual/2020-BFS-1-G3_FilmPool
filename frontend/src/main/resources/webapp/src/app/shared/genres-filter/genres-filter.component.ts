import { Component, OnInit } from '@angular/core';
import {ActivatedRoute, Router} from "@angular/router";
import {DataService} from "../../services/data.service";

@Component({
    selector: 'app-genresfilter',
    templateUrl: './genres-filter.component.html',
    styleUrls: ['./genres-filter.component.scss'],
    providers: [DataService]
})
export class GenresFilterComponent implements OnInit {
    //Forma 2
    public  content;
    public data = [];
    constructor(activatedRoute : ActivatedRoute, dataService : DataService) {
        activatedRoute.params.subscribe(params =>{
            dataService.getBuscadorGeneros2(params["genre_id"]).subscribe(response =>{
                this.content = response["data"][0];
            })
            dataService.getBuscadorGeneros2(params["genre_id"]).subscribe(response =>{
                this.data = [];
                response["data"].forEach(d =>{
                    this.data.push(d);
                })
            })
        })

    }

    ngOnInit() {


    }
}
//Forma 1
/*
    public data = [];
    public keyword = "genre_name";
    public notFound = "No se encuentra"

    constructor(private dataService :DataService, private router : Router) {

    }

    getData(){
        this.dataService.getBuscadorGeneros2().subscribe(response =>{
            response["data"].forEach(content=>{
                this.data.push(content);
            })
        });
    }
    ngOnInit() {
        this.getData();
    }
    onSelected(item){
        this.router.navigate(["/main/movies/",item.genre_id])
    }

}*/