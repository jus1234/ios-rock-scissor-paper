//
//  GameView.swift
//  RockPaperScissors
//
//  Created by Designer on 11/28/23.
//

import Foundation

struct GameView: View {
    func showReadyText(_ attackPlayer: Player) {
        print("\(attackPlayer.playerSelect.mukJjiBba)... \(attackPlayer.playerSelect.mukJjiBba)...")
    }
    
    func showRockPaperScissorsSelects(_ userSelect: RockPaperScissors, _ computerSelect: RockPaperScissors) {
        print("사용자 : \(userSelect.korean), 컴퓨터 : \(computerSelect.korean)")
        showRockPaperScissorsImage(userSelect, computerSelect)
    }
    
    func showRockPaperScissorsImage(_ attack: RockPaperScissors, _ defense: RockPaperScissors) {
        print("사용자 : \(attack)        VS     컴퓨터 : \(defense)")
        let list = attack.image
        let attckImage: [String] = attack.image
        let defenseImage: [String] = defense.image

        let test = defenseImage.map { $0.replacingOccurrences(of: "(", with: "TEMP")
                                        .replacingOccurrences(of: ")", with: "(")
                                        .replacingOccurrences(of: "TEMP", with: ")") }

        for var i in (0...list.count - 1 ) {
            print("\(attckImage[i])| \(String(test[i].reversed()))")
            i += 1
        }
    }
    
    func showMukJjiBbaSelects(_ attackPlayer: Player, _ defensePlayer: Player) {
        print("\(attackPlayer.playerType.text) : \(attackPlayer.playerSelect.mukJjiBba)!, \(defensePlayer.playerType.text) : \(defensePlayer.playerSelect.mukJjiBba)")
        showRockPaperScissorsImage(attackPlayer.playerSelect, defensePlayer.playerSelect)
    }
    
    func rockPaperScissorsWin() {
        print(Message.win.text)
    }
    
    func rockPaperScissorsLose() {
        print(Message.lose.text)
    }
    
    func rockPaperScissorsDraw() {
        print(Message.draw.text)
    }
    
    func standardMenu() {
        print(Message.standardMenu.text, terminator: " ")
    }
    
    func upgradeMenu(_ player: Player) {
        print(Message.upgradeMenu(player).text, terminator: " ")
    }
    
    func finalWin(_ player: Player) {
        print(Message.finalWin(player).text)
    }
    
    func turnChange(_ player: Player) {
        print(Message.turnChange(player).text)
    }
    
    func wrong() {
        print(Message.wrong.text)
    }
    
    func end() {
        print(Message.end.text)
    }
    
    
}
