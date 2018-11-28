//
//  VideoViewController.swift
//  BabyCenter
//
//  Created by Phan Quy KY on 2018/11/15.
//  Copyright © 2018 Phan Quy KY. All rights reserved.
//

import UIKit

class VideoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var listVideo = ["https://img.youtube.com/vi/hqp3B_bDIjQ/hqdefault.jpg",
                     "https://img.youtube.com/vi/ddabRDhKhNI/hqdefault.jpg",
                     "https://img.youtube.com/vi/fIZBqRlIqJc/hqdefault.jpg",
                     "https://img.youtube.com/vi/PkM2m5o3Cl0/hqdefault.jpg",
                     "https://img.youtube.com/vi/Cr-CmUa2ZMM/hqdefault.jpg",
                     "https://img.youtube.com/vi/vmmi8LWxqQs/hqdefault.jpg",
                     "https://img.youtube.com/vi/xeYC2Z3TBOs/hqdefault.jpg",
                     "https://img.youtube.com/vi/TTNzitwEO6k/hqdefault.jpg",
                     "https://img.youtube.com/vi/yydAMq8SsiE/hqdefault.jpg",
                     "https://img.youtube.com/vi/-58GtjhGCuA/hqdefault.jpg",
                     "https://img.youtube.com/vi/H9tMRKd0PBM/hqdefault.jpg",
                     "https://img.youtube.com/vi/Mcwjimbew9Q/hqdefault.jpg",
                     "https://img.youtube.com/vi/iSTMRcLgUi4/hqdefault.jpg",
                     "https://img.youtube.com/vi/sCibtxumCQU/hqdefault.jpg",
                     "https://img.youtube.com/vi/JAnj0gi3NrQ/hqdefault.jpg",
                     "https://img.youtube.com/vi/dp9pRnTe1OI/hqdefault.jpg",
                     "https://img.youtube.com/vi/dVoWzJIw8Pc/hqdefault.jpg",
                     "https://img.youtube.com/vi/kridJWy3hYU/hqdefault.jpg",
                     "https://img.youtube.com/vi/tTQ1NaYH4TI/hqdefault.jpg",
                     "https://img.youtube.com/vi/5WmRMDVxT9Y/hqdefault.jpg",
                     "https://img.youtube.com/vi/9RsODMclYg4/hqdefault.jpg",
                     "https://img.youtube.com/vi/vGmYcaFhTxQ/hqdefault.jpg",
                     "https://img.youtube.com/vi/5xj2KLTjvq4/hqdefault.jpg",
                     "https://img.youtube.com/vi/Sosp6dWKTZY/hqdefault.jpg",
                     "https://img.youtube.com/vi/tEk-nSeOnKg/hqdefault.jpg",
                     "https://img.youtube.com/vi/pV-mTsgKzto/hqdefault.jpg",
                     "https://img.youtube.com/vi/kbNCU60GNyE/hqdefault.jpg",
                     "https://img.youtube.com/vi/vi8j7ULALUw/hqdefault.jpg",
                     "https://img.youtube.com/vi/rifGqUJvkXU/hqdefault.jpg",
                     "https://img.youtube.com/vi/frnqOSCRHWM/hqdefault.jpg",
                     "https://img.youtube.com/vi/CtEcYEcqMxI/hqdefault.jpg",
                     "https://img.youtube.com/vi/_Fjk6SVngko/hqdefault.jpg",
                     "https://img.youtube.com/vi/8-OtVxgNsRo/hqdefault.jpg",
                     "https://img.youtube.com/vi/KVMcT5sPVpk/hqdefault.jpg",
                     "https://img.youtube.com/vi/py9BH491RXA/hqdefault.jpg",
                     "https://img.youtube.com/vi/nsPzT46rOOE/hqdefault.jpg",
                     "https://img.youtube.com/vi/Sgki83fPvHE/hqdefault.jpg",
                     "https://img.youtube.com/vi/-d1y0CO472w/hqdefault.jpg",
                     "https://img.youtube.com/vi/1nNkIik95ps/hqdefault.jpg"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listVideo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "BabyVideoTableViewCell", for: indexPath) as! BabyVideoTableViewCell
        
        cell.thubnailImage.image = UIImage(url: URL(string: listVideo[indexPath.row]))
        cell.titleLabel.text = "dsadasdasdsadsadas"
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 375
//    }


}
