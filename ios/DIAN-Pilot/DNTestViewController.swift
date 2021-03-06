//
//  DNTestViewController.swift
//  DIAN-Pilot
//
//  Created by Philip Hayes on 11/21/16.
//  Copyright © 2016 HappyMedium. All rights reserved.
//

import UIKit

protocol DNTestViewControllerDelegate {
    func testDidFinish(viewController:DNTestViewController);

}

class DNTestViewController: DNViewController {

    var delegate:DNTestViewControllerDelegate?;
    
    public var isFinalTest:Bool = false
    public func setTest<T:DNTest>(test:T){
    }
    public func getTest<T:DNTest>() ->T? {
        return nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func endTest()
    {
        if let session = DNDataManager.sharedInstance.currentTestSession
        {
            getTest()?.saveData(testSession: session);
        }
        
        
        delegate?.testDidFinish(viewController: self);
    }
    deinit {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
