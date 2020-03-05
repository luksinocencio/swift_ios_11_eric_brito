//
//  ManagerGameViewController.swift
//  myGames
//
//  Created by Lucas Inocencio on 02/12/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ManagerGameViewController: UIViewController {
    
    
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfConsole: UITextField!
    @IBOutlet weak var dpReleaseDate: UIDatePicker!
    @IBOutlet weak var btAddEdit: UIButton!
    @IBOutlet weak var btCover: UIButton!
    @IBOutlet weak var ivCover: UIImageView!
    
    var game: Game!
    lazy var pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.backgroundColor = .white
        return pickerView
    }()
    var consolesManager = ConsoleManager.shared
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if game != nil {
            title = "Editar Jogo"
            btAddEdit.setTitle("Alterar", for: .normal)
            tfTitle.text = game.title
            if let console = game.console, let index = consolesManager.consoles.index(of: console){
                tfConsole.text = console.name
                pickerView.selectRow(index, inComponent: 0, animated: false)
            }
            ivCover.image = game.cover as? UIImage
            if let releasdeDate = game.releaseDate {
                dpReleaseDate.date = releasdeDate
            }
            if game.cover != nil {
                btCover.setTitle(nil, for: .normal)
            }
        }
        prepareConsoleTextField()
    }
    
    func prepareConsoleTextField() {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 44))
        toolbar.tintColor = UIColor(named: "main")
        
        let btCancel = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        let btDone = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        let btFlexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        toolbar.items = [btCancel, btFlexibleSpace, btDone]
        tfConsole.inputView = pickerView
        tfConsole.inputAccessoryView = toolbar
    }
    
    @objc func cancel() {
        tfConsole.resignFirstResponder()
    }
    
    @objc func done() {
        tfConsole.text = consolesManager.consoles[pickerView.selectedRow(inComponent: 0)].name
        cancel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        consolesManager.loadConsoles(with: context)
    }
    
    @IBAction func addEditCover(_ sender: UIButton) {
        showAlertPhotos()
        present(imagePicker, animated: true, completion: nil)
    }
    
    @objc private func addEditCover(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            let alert = UIAlertController(title: "Editar Foto", message: nil, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Biblioteca de Fotos", style: .default, handler: { _ in self.showPhotosFromGallery() }))
            alert.addAction(UIAlertAction(title: "Câmera", style: .default, handler: { _ in self.showCamera() }))
            alert.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func addEditGame(_ sender: UIButton) {
        if game == nil {
            game = Game(context: context)
        }
        game.title = tfTitle.text
        game.releaseDate = dpReleaseDate.date
        if !tfConsole.text!.isEmpty {
            let console = consolesManager.consoles[pickerView.selectedRow(inComponent: 0)]
            game.console = console
        }
        game.cover = ivCover.image
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        navigationController?.popViewController(animated: true)
    }
    
}

extension ManagerGameViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return consolesManager.consoles.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let console = consolesManager.consoles[row]
        return console.name
    }
}

extension ManagerGameViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let recoverImage = info[ UIImagePickerControllerOriginalImage ] as! UIImage
        ivCover.contentMode = .scaleAspectFit
        ivCover.image = recoverImage
        btCover.setTitle(nil, for: .normal)
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    func showAlertPhotos() {
        let alert = UIAlertController(title: "Editar Foto", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Biblioteca de Fotos", style: .default, handler: { _ in
            self.showPhotosFromGallery()
        }))
        alert.addAction(UIAlertAction(title: "Câmera", style: .default, handler: { _ in
            self.showCamera()
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func showPhotosFromGallery() {
        
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func showCamera() {
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
        imagePicker.cameraCaptureMode = .photo
        
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
