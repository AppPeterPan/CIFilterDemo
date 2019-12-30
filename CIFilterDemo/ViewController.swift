//
//  ViewController.swift
//  CIFilterDemo
//
//  Created by SHIH-YING PAN on 2019/12/30.
//  Copyright © 2019 SHIH-YING PAN. All rights reserved.
//

import UIKit
import CoreImage.CIFilterBuiltins

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   @IBAction func filterSliderChange(_ sender: UISlider) {
            let image = UIImage(named: "little prince")
            let ciImage = CIImage(image: image!)
            let filter = CIFilter.colorMonochrome()
            filter.inputImage = ciImage
            filter.intensity = sender.value
            if let outputCIImage = filter.outputImage {
                let filterImage = UIImage(ciImage: outputCIImage)
                imageView.image = filterImage
            }
    }
    
}

