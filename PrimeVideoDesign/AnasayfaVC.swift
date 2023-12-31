//
//  ViewController.swift
//  PrimeVideoDesign
//
//  Created by onur on 31.12.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var topCollectionView: UICollectionView!
    
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    
    var filmListesi = [Film]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topCollectionView.delegate = self
        topCollectionView.dataSource = self
        
        secondCollectionView.delegate = self
        secondCollectionView.dataSource = self
        
        thirdCollectionView.delegate = self
        thirdCollectionView.dataSource = self
        
        self.view.addSubview(topCollectionView)
        self.view.addSubview(secondCollectionView)
        
        
        //Collection View Design------------------------------------------------------
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumLineSpacing = 0
        tasarim.minimumInteritemSpacing = 0
        
        tasarim.scrollDirection = .horizontal
        
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = ekranGenislik
        print(itemGenislik)
        tasarim.itemSize = CGSize(width: itemGenislik, height: 216)
        topCollectionView.collectionViewLayout = tasarim
        //------------------------------------------------------------------------
        let tasarimSecond = UICollectionViewFlowLayout()
        
        tasarimSecond.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarimSecond.minimumLineSpacing = 15
        tasarimSecond.minimumInteritemSpacing = 0
        
        tasarimSecond.scrollDirection = .horizontal
        
        tasarimSecond.itemSize = CGSize(width: 230, height: 125)
        secondCollectionView.collectionViewLayout = tasarimSecond
        
        //------------------------------------------------------------------------
        let tasarimThird = UICollectionViewFlowLayout()
        
        tasarimThird.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarimThird.minimumLineSpacing = 15
        tasarimThird.minimumInteritemSpacing = 0
        
        tasarimThird.scrollDirection = .horizontal
        
        tasarimThird.itemSize = CGSize(width: 150, height: 177)
        thirdCollectionView.collectionViewLayout = tasarimThird
        
        let film1 = Film(id: 1, ad: "Reacher", resim: "reacher")
        let film2 = Film(id: 2, ad: "Bullet Train", resim: "bullet_train")
        let film3 = Film(id: 3, ad: "Culpa Mia", resim: "culpa_mia")
        let film4 = Film(id: 4, ad: "The Boys", resim: "the_boys")
        let film5 = Film(id: 5, ad: "Invincible", resim: "invincible")
        let film6 = Film(id: 6, ad: "Succesion", resim: "succesion")
        let film7 = Film(id: 7, ad: "Silber", resim: "silber")
        
        filmListesi.append(film1)
        filmListesi.append(film2)
        filmListesi.append(film3)
        filmListesi.append(film4)
        filmListesi.append(film5)
        filmListesi.append(film6)
        filmListesi.append(film7)
        
    }


}

extension AnasayfaVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == topCollectionView{
            return filmListesi.count
        } else {
            return filmListesi.count
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == topCollectionView{
            let film = filmListesi[indexPath.row]
            
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "topCollectionCell", for: indexPath) as! TopCollectionView_ViewCell
            
            hucre.cellImageView.image = UIImage(named: film.resim)
            
            hucre.layer.borderColor = UIColor.black.cgColor
            hucre.layer.borderWidth = 0.3
            hucre.layer.cornerRadius = 1
            
            return hucre
        } else if collectionView == secondCollectionView {
            let film = filmListesi[indexPath.row]
            
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! TopCollectionView_ViewCell
        
            hucre.secondCellImage.image = UIImage(named: film.resim)
            
            hucre.layer.borderColor = UIColor.black.cgColor
            hucre.layer.borderWidth = 0.3
            hucre.layer.cornerRadius = 1
            
            hucre.layer.cornerRadius = 10.0
            hucre.clipsToBounds = true
            
            return hucre
        } else if collectionView == thirdCollectionView {
            let film = filmListesi[indexPath.row]
            
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCollectionCell", for: indexPath) as! TopCollectionView_ViewCell
        
            hucre.thirdCellImage.image = UIImage(named: film.resim)
            
            hucre.layer.borderColor = UIColor.black.cgColor
            hucre.layer.borderWidth = 0.3
            hucre.layer.cornerRadius = 1
            
            hucre.layer.cornerRadius = 10.0
            hucre.clipsToBounds = true
            
            return hucre
        }
        
        
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! TopCollectionView_ViewCell
        return hucre
    }
}
