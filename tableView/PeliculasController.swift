//
//  ViewController.swift
//  tableView
//
//  Created by Alumno on 9/20/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class PeliculasController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var peliculas : [Pelicula] = []
    
    //Establece la altura de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 98
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as? CeldaPeliculaController
        celda?.lblTitulo.text = peliculas[indexPath.row].titulo
        celda?.lblAño.text = peliculas[indexPath.row].año
        celda?.lblDirector.text = peliculas[indexPath.row].director
        return celda!
    }
    
    
    ////////////////

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1997", director: "James Cameron", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Chabelo y Pepito contra los mosntruos", año: "1973", director: "Josè Estrada", genero: "Comedia"))
        peliculas.append(Pelicula(titulo: "Vacaciones de terror", año: "1989", director: "Renè Cardona", genero: "Terror"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    ////////////////////////
}

