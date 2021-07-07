//
//  ContentModel.swift
//  LearningApp
//
//  Created by Monty Montgomery on 7/4/21.
//

import Foundation
class ContentModel: ObservableObject{
    
    @Published var modules = [Module]()
    var styleData: Data?
    
    
    init(){
        getLocalData()
    }
    
    func getLocalData(){
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        
        
        do{
            //Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            //Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //assign parsed modules into a modules object
            self.modules = modules
        }
        catch{
            // TODO error
            print("Couldn't parse local data")
        }
        
        
        //Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        
        do{
    
            //Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
        }
        
        catch{
            // log error
            print(" Could not parge style data")
        }
        
        
        
    }
    
}
