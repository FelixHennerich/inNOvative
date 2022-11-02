//
//  FileUtils.swift
//  inNOvative
//
//  Created by Felix Hennerich on 02.11.22.
//

import Foundation

func isFileAvailable(filepath: String) -> Bool{
    let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    let url2 = NSURL(fileURLWithPath: path)
    if let pathComponent = url2.appendingPathComponent(filepath) {
        let filePath = pathComponent.path
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: filePath) {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

func deleteFile(filepath: String){
    do{
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
            let url2 = NSURL(fileURLWithPath: path)
        if let pathComponent = url2.appendingPathComponent(filepath) {
            
            let filePath = pathComponent.path
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                try fileManager.removeItem(atPath: filePath)
                print("File: " + filepath + " got deleted")
            }else {
                print("File: " + filepath + " does not exist")
            }
        }
    }catch {
        print("Error happend during deleting File named:" + filepath)
    }
}

func createFile(content: String, filename: String){
    let str = content
    print("trying to create")
    if(!isFileAvailable(filepath: filename)){
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        
        do {
            try str.write(to: url, atomically: true, encoding: .utf8)
            let input = try String(contentsOf: url)
            print("File: " + filename + " got created")
            print("FileInput: " + input)
        } catch {
            print(error.localizedDescription)
        }
    }else {
        print("File: " + filename + " already exist")
    }
}

func getDocumentsDirectory() -> URL {
    // find all possible documents directories for this user
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

    // just send back the first one, which ought to be the only one
    return paths[0]
}
