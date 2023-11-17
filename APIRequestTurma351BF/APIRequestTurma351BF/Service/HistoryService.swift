//
//  HistoryService.swift
//  APIRequestTurma351BF
//
//  Created by Michael Bressiani on 16/11/23.
//

import Foundation
//import Alamofire

class HistoryService {
    
//    func getHistoryAlamofire(completion: @escaping (Result<History, Error>) -> Void) {
//        let urlString = "https://run.mocky.io/v3/39c1de40-7c5e-4198-84c1-8e352d8a2789"
//        AF.request(urlString, method: .get).responseDecodable(of: History.self) { response in
//            switch response.result {
//            case .success(let history):
//                completion(.success(history))
//            case .failure(let failure):
//                completion(.failure(failure))
//            }
//        }
//    }
    
    // utilizamos o @escaping para que a nossa função continue viva ATÉ obtenha o retorna do completion
//    func getHistoryURLSession(completion: @escaping (Result<History, Error>) -> Void) {
//        guard let url = URL(string: "https://run.mocky.io/v3/39c1de40-7c5e-4198-84c1-8e352d8a2789") else { return }
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            
//            guard let dataResult = data else { return }
//            
//            guard let response = response as? HTTPURLResponse else { return }
//            
//            if response.statusCode == 200 {
//                do {
//                    let history: History = try JSONDecoder().decode(History.self, from: dataResult)
//                    completion(.success(history))
//                } catch {
//                    completion(.failure(error))
//                }
//            } else {
//                completion(.failure(error ?? NSError(domain: "Deu ruim em", code: response.statusCode)))
//            }
//        }
//        task.resume()
//    }
    
    func getHistoryMock(completion: (Result<Welcome, Error>) -> Void) {
        if let url = Bundle.main.url(forResource: "History", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let history: Welcome = try JSONDecoder().decode(Welcome.self, from: data)
                completion(.success(history))
            } catch {
                completion(.failure(error))
            }
        }
    }
}
