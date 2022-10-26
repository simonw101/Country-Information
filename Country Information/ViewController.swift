//
//  ViewController.swift
//  Country Information
//
//  Created by Simon Wilson on 23/06/2022.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    var countryObj: CountryObj?
    
    var countryObjArray = [CountryObj]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://restcountries.com/v3.1/all") {
        
            //Get request
            AF.request(url, method: .get).validate().response { response in
                
                switch response.result {
                    
                case .success(let value):
                    
                    //parsing data
                    let json = JSON(value).arrayValue
                    for item in json {
                        if let offialName = item["name"]["official"].string {
                            self.countryObj?.officialName = offialName
                            
                            if let tld = item["tld"].string {
                                self.countryObj?.tld = tld
                            }
                        }
                        
                        
                    }
                case .failure(let error):
                    print(error)
                }
                
            }
            
        }
        
    }
    

}

