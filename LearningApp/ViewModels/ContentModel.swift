//
//  ContentModel.swift
//  LearningApp
//
//  Created by Monty Montgomery on 7/4/21.
//

import Foundation
class ContentModel: ObservableObject{
    
    @Published var modules = [Module]()
    
    init(){
        getLocalData()
    }
    
    func getLocalData(){
        
        
        
        // Get the path to the json file within the app bundle
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        // get a url to local json file
        
        
        do{
            let jsonData = try Data(contentsOf: jsonUrl!)
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            self.modules = modules
        }
        catch{
            print("Couldn't parce local data")
        }
        // read the file into  data object
        
        // try to decode the json into an array of modules
        
    }
    
}
