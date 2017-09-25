//
//  ViewController.swift
//  SudokuVerificationSample
//
//  Created by Vinoth Sridharan on 25/09/17.
//  Copyright © 2017 Vinoth Sridharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    class Sudoku
    {
        class func Board(board: [[Character]], r1: Int, c1: Int, r2: Int, c2: Int) -> Bool
        {
            var singleSet: Set<Character> = Set()
            for i in r1...r2 {
                for j in c1...c2 {
                    if board[i][j] != "." {
                        if singleSet.contains(board[i][j]) == true {
                            return false
                        } else {
                            singleSet.insert(board[i][j])
                        }
                    }
                }
            }
            return true
        }
        class func Check(_ board: [[Character]]) -> Bool
        {
            for i in 0..<9 {
                if Board(board: board, r1: i, c1: 0, r2: i, c2: 8) == false {
                    return false
                }
                if Board(board: board, r1: 0, c1: i, r2: 8, c2: i) == false {
                    return false
                }
            }
            for i in 0..<3 {
                for j in 0..<3 {
                    if Board(board: board, r1: i*3, c1: j*3, r2: i*3+2, c2: j*3+2) == false {
                        return false
                    }
                }
            }
            return true
        }
    }
    
    

}

