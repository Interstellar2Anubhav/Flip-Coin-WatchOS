//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by Anubhav Das on 30/12/20.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var flipLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    @IBAction func flipButton() {
        
        flipLabel.setText("Flip the Coin.")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            
            self.flipLabel.setText("Flipping the Coin...")
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                
                self.flipLabel.setText("Flipping the Coin...")
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){ [self] in
                    
                    let randomFlip = Bool.random()
                    
                    if(randomFlip){
                        flipLabel.setText("It's a Head")
                    }
                    else{
                        flipLabel.setText("It's a Tail")
                    }
                }
            }
            
        }
    }
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
}
