//
//  AddViewController.swift
//  GBurger
//
//  Created by 정건휘 on 07/03/2019.
//  Copyright © 2019 gunw. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
   // 데이터 저장 프로퍼티
   lazy var listDAO = ListDAO()
   
   @IBOutlet weak var nameTextField: UITextField!
   @IBOutlet weak var storeImageView: UIImageView!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      nameTextField.becomeFirstResponder()
      
      // 이미지 뷰 곡선처리
      storeImageView.layer.cornerRadius = 10
      storeImageView.layer.masksToBounds = true
      
      let tapGuesture = UITapGestureRecognizer(target: self, action: #selector(picker(_:)))
      storeImageView.addGestureRecognizer(tapGuesture)
      
   }
   
   @IBAction func save(_ sender: Any) {
      guard self.nameTextField.text?.isEmpty == false else {
         let alert = UIAlertController(title: nil, message: "제목을 입력해 주세요.", preferredStyle: .alert)
         let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
         alert.addAction(ok)
         self.present(alert, animated: true, completion: nil)
         return
      }
      
      let data = ListData()
      
      data.burgerName = self.nameTextField.text
      data.burgerImage = self.storeImageView.image
      data.time = Date()
      
      // 코어데이터에 데이터 추가
      self.listDAO.insert(data)
      
      self.navigationController?.popViewController(animated: true)
   }
   @IBAction func close(_ sender: Any) {
      self.navigationController?.popViewController(animated: true)
   }
   
   
}

extension AddViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
   @objc func picker(_ sender: UITapGestureRecognizer) {
      let picker = UIImagePickerController()
      
      picker.delegate = self
      picker.allowsEditing = true
      self.present(picker, animated: false, completion: nil)
   }
   
   func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      self.storeImageView.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
      picker.dismiss(animated: false, completion: nil)
   }
}
