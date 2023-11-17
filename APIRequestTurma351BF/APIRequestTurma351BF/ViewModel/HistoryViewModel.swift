//
//  HistoryViewModel.swift
//  APIRequestTurma351BF
//
//  Created by Michael Bressiani on 16/11/23.
//

import Foundation

protocol HistoryViewModelProtocol: AnyObject {
    func successRequest()
    func errorRequest()
}

class HistoryViewModel {
    
    private var service = HistoryService()
    private var welcome: Welcome?
    weak var delegate: HistoryViewModelProtocol?
    
//    func fetchHistoryAlamofire() {
//        service.getHistoryAlamofire { result in
//            switch result {
//            case .success(let success):
//                self.history = success
//                self.delegate?.successRequest()
//            case .failure(_):
//                self.delegate?.errorRequest()
//            }
//        }
//    }
    
//    func fetchHistoryURLSession() {
//        service.getHistoryURLSession { result in
//            DispatchQueue.main.async {
//                switch result {
//                case .success(let success):
//                    self.history = success
//                    self.delegate?.successRequest()
//                case .failure(_):
//                    self.delegate?.errorRequest()
//                }
//            }
//        }
//    }
    
    func fetchHistoryMock() {
        service.getHistoryMock { result in
            switch result {
            case .success(let success):
                self.welcome = success
                self.delegate?.successRequest()
            case .failure(_):
                self.delegate?.errorRequest()
            }
        }
    }
    
    func numberOfRows() -> Int {
        return welcome?.pessoas.count ?? 0
    }
    
    func getHistoryAccountList(indexPath: IndexPath) -> Pessoa {
        return welcome?.pessoas[indexPath.row] ?? Pessoa(nome: "", sobrenome: "", idade: 0, profissao: "")
    }
}
