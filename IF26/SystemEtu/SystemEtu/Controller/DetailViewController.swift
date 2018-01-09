//
//  DetailViewController.swift
//  SystemEtu
//
//  Created by Julien 安 on 2018/1/7.
//  Copyright © 2018年 if26. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    let database = Database()
    var student : Etudent!
    //var row: Int!

    @IBOutlet weak var textId: UITextField!
    @IBOutlet weak var textNom: UITextField!
    @IBOutlet weak var textPrenom: UITextField!
    @IBOutlet weak var textForm: UITextField!
    @IBOutlet weak var textTele: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(student)+1")
        //print(row)
        
        textId.text = String(student.id)
        textNom.text = student.nom
        textPrenom.text = student.prenom
        textForm.text = student.formation
        textTele.text = String(student.tele)
        
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modifier(_ sender: UIButton) {
        database.tableEtudiantDeleteItem(Id: student.id)
        database.tableStudentInsertItem(Id: Int(textId.text!)!, Nom: textNom.text!, Prenom: textPrenom.text!, Formation: textForm.text!, Tele: Int(textTele.text!)!)
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
