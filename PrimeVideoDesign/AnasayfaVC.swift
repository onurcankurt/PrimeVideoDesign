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
    
    @IBOutlet weak var tumuButton: UIButton!
    @IBOutlet weak var filmlerButton: UIButton!
    @IBOutlet weak var tvdizileriButton: UIButton!
    
    
    var posterFilmListesi = [Film]()
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
        
        tasarimThird.itemSize = CGSize(width: 120, height: 180)
        thirdCollectionView.collectionViewLayout = tasarimThird
        //------------------------------------------------------------------------
        
        filmDoldur()
        posterFilmDoldur()
        
    }
    
    @IBAction func tumuButtonClicked(_ sender: Any) {
        tumuButton.backgroundColor = .white
        tumuButton.tintColor = .anaRenk
        
        filmlerButton.backgroundColor = .anaRenk
        filmlerButton.tintColor = .white
        
        tvdizileriButton.backgroundColor = .anaRenk
        tvdizileriButton.tintColor = .white
        
        filmListesi.removeAll()
        filmDoldur()
        posterFilmListesi.removeAll()
        posterFilmDoldur()
        
        topCollectionView.reloadData()
        secondCollectionView.reloadData()
        thirdCollectionView.reloadData()
        
    }
    
    @IBAction func filmlerButtonClicked(_ sender: Any) {
        filmlerButton.backgroundColor = .white
        filmlerButton.tintColor = .anaRenk
        
        tumuButton.backgroundColor = .anaRenk
        tumuButton.tintColor = .white
        
        tvdizileriButton.backgroundColor = .anaRenk
        tvdizileriButton.tintColor = .white
        
        filmListesi.removeAll()
        filmDoldur()
        posterFilmListesi.removeAll()
        posterFilmDoldur()
        
        topCollectionView.reloadData()
        secondCollectionView.reloadData()
        thirdCollectionView.reloadData()
        
        filmListesi.removeFirst()
        filmListesi.removeFirst()
        filmListesi.removeFirst()
        
        posterFilmListesi.removeFirst()
        posterFilmListesi.removeFirst()
        posterFilmListesi.removeFirst()
        
        topCollectionView.reloadData()
        secondCollectionView.reloadData()
        thirdCollectionView.reloadData()
    }
    
    @IBAction func tvdizileriButtonClicked(_ sender: Any) {
        tvdizileriButton.backgroundColor = .white
        tvdizileriButton.tintColor = .anaRenk
        
        tumuButton.backgroundColor = .anaRenk
        tumuButton.tintColor = .white
        filmlerButton.backgroundColor = .anaRenk
        filmlerButton.tintColor = .white
        
        filmListesi.removeAll()
        filmDoldur()
        posterFilmListesi.removeAll()
        posterFilmDoldur()
        
        topCollectionView.reloadData()
        secondCollectionView.reloadData()
        thirdCollectionView.reloadData()
        
        filmListesi.removeLast()
        filmListesi.removeLast()
        filmListesi.removeLast()
        
        posterFilmListesi.removeLast()
        posterFilmListesi.removeLast()
        posterFilmListesi.removeLast()
        
        topCollectionView.reloadData()
        secondCollectionView.reloadData()
        thirdCollectionView.reloadData()
    }
    
    func filmDoldur(){
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
    
    func posterFilmDoldur(){
        let film1 = Film(id: 1, ad: "Woman Talking", resim: "woman_talking_poster")
        let film2 = Film(id: 2, ad: "Reacher", resim: "reacher_poster")
        let film3 = Film(id: 3, ad: "Culpa Mia", resim: "culpa_mia_poster")
        let film4 = Film(id: 4, ad: "Güç Yüzükleri", resim: "guc_yuzukleri_poster")
        let film5 = Film(id: 5, ad: "Küçük Batman'in Noeli", resim: "kucuk_batman_poster")
        let film6 = Film(id: 6, ad: "Gen V", resim: "genv_poster")
        let film7 = Film(id: 7, ad: "The Boys", resim: "the_boys_poster")
        let film8 = Film(id: 8, ad: "Invincible", resim: "invincible_poster")
        let film9 = Film(id: 9, ad: "Silber", resim: "silber_poster")
        let film10 = Film(id: 10, ad: "Noel Süprizleri 2", resim: "noel_suprizleri_poster")
        let film11 = Film(id: 11, ad: "İnanılmaz Noel", resim: "inanilmaz_noel_poster")
        
        posterFilmListesi.append(film1)
        posterFilmListesi.append(film2)
        posterFilmListesi.append(film3)
        posterFilmListesi.append(film4)
        posterFilmListesi.append(film5)
        posterFilmListesi.append(film6)
        posterFilmListesi.append(film7)
        posterFilmListesi.append(film8)
        posterFilmListesi.append(film9)
        posterFilmListesi.append(film10)
        posterFilmListesi.append(film11)
    }
    
}

extension AnasayfaVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == topCollectionView{
            return filmListesi.count
        } else if collectionView == thirdCollectionView {
            return posterFilmListesi.count
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
            let film = posterFilmListesi[indexPath.row]
            
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == thirdCollectionView {
            let film = posterFilmListesi[indexPath.row]
            print("Seçilen içerik: \(film.ad)")
        }else {
            let film = filmListesi[indexPath.row]
            print("Seçilen içerik: \(film.ad)")
        } 
    }
}
