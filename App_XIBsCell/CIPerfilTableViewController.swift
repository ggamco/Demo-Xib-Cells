//
//  CIPerfilTableViewController.swift
//  App_XIBsCell
//
//  Created by cice on 20/1/17.
//  Copyright © 2017 cice. All rights reserved.
//

import UIKit

class CIPerfilTableViewController: UITableViewController {

    
    var arrayTexto = ["Pablo Ruiz Picasso1 (Málaga, 25 de octubre de 1881-Mougins, 8 de abril de 1973) fue un pintor y escultor español, creador, junto con Georges Braque, del cubismo.Es considerado desde el génesis del siglo XX como uno de los mayores pintores que participaron en muchos movimientos artísticos que se propagaron por el mundo y ejercieron una gran influencia en otros grandes artistas de su tiempo. Sus trabajos están presentes en museos y colecciones de toda Europa y del mundo. Además, abordó otros géneros como el dibujo, el grabado, la ilustración de libros, la escultura, la cerámica y el diseño de escenografía y vestuario para montajes teatrales. El crítico de arte y coleccionista Christian Zervos reproduce en su catálogo más de 16 000 obras de Picasso.2 En lo político, Picasso se declaraba pacifista y comunista. Fue miembro del Partido Comunista de España y del Partido Comunista Francés hasta su muerte3 el 8 de abril de 1973 en su casa llamada «Notre-Dame-de-Vie»4 5 en Mougins (Francia) a los 91 años. Está enterrado en el parque del castillo de Vauvenargues (Bouches-du-Rhone).", "Magdalena Carmen Frida Kahlo Calderón (Coyoacán, 6 de julio de 1907-Ib., 13 de julio de 1954) fue una pintora y poetisa mexicana.2 Casada con el célebre muralista mexicano Diego Rivera, su vida estuvo marcada por el infortunio de contraer poliomielitis y después por un grave accidente en su juventud que la mantuvo postrada en cama durante largos periodos, llegando a someterse hasta a 32 operaciones quirúrgicas.3 Llevó una vida poco convencional, fue bisexual4 y entre sus amantes se encontraba León Trotski.5 Su obra pictórica gira temáticamente en torno a su biografía y a su propio sufrimiento. Fue autora de unas 200 obras, principalmente autorretratos, en los que proyectó sus dificultades por sobrevivir. La obra de Kahlo está influenciada por su esposo, el reconocido pintor Diego Rivera, con el que compartió su gusto por el arte popular mexicano de raíces indígenas, inspirando a otros pintores y pintoras mexicanos del periodo posrevolucionario. En 1939 expuso sus pinturas en Francia gracias a una invitación de André Breton, quien intentó convencerla de que eran «surrealistas», aunque Kahlo decía que esta tendencia no correspondía con su arte ya que ella no pintaba sueños sino su propia vida. Una de las obras de esta exposición (Autorretrato-El marco, que actualmente se encuentra en el Centro Pompidou) se convirtió en el primer cuadro de un artista mexicano adquirido por el Museo del Louvre. Hasta entonces, Frida Kahlo había pintado solo privadamente y a ella misma le costó admitir que su obra pudiese tener un interés general. Aunque gozó de la admiración de destacados pintores e intelectuales de su época como Pablo Picasso, Vasili Kandinski, André Breton o Marcel Duchamp, su obra alcanzó fama y verdadero reconocimiento internacional después de su muerte, especialmente a partir de la década de 1970."]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Si trabajamos con XIBs tenemos que registrarlos en el viewDidLoad
        tableView.register(UINib(nibName: "CIPercilCustomCell", bundle: nil), forCellReuseIdentifier: "CustomCeldaPerfil")
        tableView.register(UINib(nibName: "CICeldaTipoUnoCustomCell", bundle: nil), forCellReuseIdentifier: "CustomCeldaTipoUno")
        tableView.register(UINib(nibName: "CICeldaTipoDosTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCeldaTipoDos")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        case 1:
            return arrayTexto.count
        default:
            return 10
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        
        case 0:
            let perfilCell = tableView.dequeueReusableCell(withIdentifier: "CustomCeldaPerfil", for: indexPath) as! CIPercilCustomCell
            
            perfilCell.myFondoPerfil.image = UIImage(named: "fondo.png")
            perfilCell.myImagenPerfil.image = UIImage(named: "nikename.png")
            perfilCell.myUsuarioLabel.text = "@ggamboa"
            perfilCell.myNombreLabel.text = "Gustavo Gamboa Cordero"
            perfilCell.myBiografiaLabel.text = "Junior Java Developer"
            perfilCell.myNumeroPublicaciones.text = "1234"
            perfilCell.myNumeroSeguidos.text = "3214"
            perfilCell.myNumeroSeguidores.text = "1122"
            
            return perfilCell
            
        case 1:
            
            let perfilCell = tableView.dequeueReusableCell(withIdentifier: "CustomCeldaTipoDos", for: indexPath) as! CICeldaTipoDosTableViewCell
            
            perfilCell.myLael.text = arrayTexto[indexPath.row]
            
            return perfilCell
            
        default:
            let perfilCell = tableView.dequeueReusableCell(withIdentifier: "CustomCeldaTipoUno", for: indexPath) as! CICeldaTipoUnoCustomCell
            
            
            
            return perfilCell
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 250
        case 1:
            return UITableViewAutomaticDimension
        default:
            return 350
        }
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 10.0
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
