//
//  ApiHandler.swift
//  Tournament
//
//  Created by Mayank Pahuja on 02/03/21.
//

import Foundation

enum RequestType: String {
    case GET = "GET"
    case POST = "POST"
    case PUT = "PUT"
    case DELETE = "DELETE"
}

class ApiHandler {
    static func getAllPlayers(withCompletion completion: @escaping ([Player]) -> Void, onFailure: @escaping () -> Void) {
        
        var request = URLRequest(url: URL(string: "http://localhost:3000/players")!)
        request.httpMethod = RequestType.GET.rawValue
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    guard let player = try decoder.decode([Player].self, from: data) as? [Player] else {
                        return
                    }
                    completion(player)
    
                } catch {
                        onFailure()
                }
            }
            else {
                onFailure()
            }
            
        })

        task.resume()
    }
    
    
    static func addPlayer(player: Player, withCompletion completion: @escaping ([Player]) -> Void, onFailure: @escaping () -> Void) {
        
        var request = URLRequest(url: URL(string: "http://localhost:3000/players")!)
        request.httpMethod = RequestType.POST.rawValue
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    guard let player = try decoder.decode([Player].self, from: data) as? [Player] else {
                        return
                    }
                    completion(player)
    
                } catch {
                        onFailure()
                }
            }
            else {
                onFailure()
            }
            
        })

        task.resume()
    }
    
    static func callApi(withUrl url:String, params:[String: Any]?) -> Void {

        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = RequestType.GET.rawValue
        if let params = params {
            request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        }
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    guard let player = try decoder.decode([Player].self, from: data) as? [Player] else {
                        return
                    }
                    print(player)
                } catch {
                    
                }
            }
            else {
                print("err:\(error)")
            }
            
        })

        task.resume()
    }
}

