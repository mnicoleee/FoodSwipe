//
//  ViewController.swift
//  FoodSwipe
//
//  Mary Nicole Tangog
//

import UIKit
import CardSlider

//1
struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    
    
}
                                        //2
class ViewController: UIViewController, CardSliderDataSource {
    
    @IBOutlet var myButton: UIButton!
    //@IBOutlet weak var myButton: UIButton!
    
    
    var data = [Item] ()
    
    //cardsliders
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sushi
        data.append(Item(image: UIImage(named: "Sushi")!,
                         rating: nil,
                         title: "Sushi",
                         subtitle: "Here are some restaurants ",
                         description: "Kabuto Sushi:SF, O'Sushi: Newark, Sanraku:SF, Kui Shin Bo:SF"))
        //Ramen
        data.append(Item(image: UIImage(named: "Ramen")!,
                         rating: nil,
                         title: "Ramen",
                         subtitle: "Here are some restaurants ",
                         description: "Marufuku Ramen, Mensho Tokyo, Nojo Ramen Tavern, Ramen Shu, Ramen Nagi"))
        //Korean Food
        data.append(Item(image: UIImage(named: "KoreanFood")!,
                         rating: nil,
                         title: "Korean Food",
                         subtitle: "Here are some restaurants",
                         description: "Barnzu Korean Restaurant, ZZan Korrean Restaurant, Daeho Kalbijim & Beef Soup, Korea House"))
        
        //Filipino Food
        data.append(Item(image: UIImage(named: "FilipinoFood")!,
                         rating: nil,
                         title: "Filipino Food",
                         subtitle: "Here are some restaurants ",
                         description: "Isla Restaurant, Toppings Too Restaurant, Gerry's Grill, TRibu Grill "))
        //Korean BBQ
        data.append(Item(image: UIImage(named: "KoreanBBQ")!,
                         rating: nil,
                         title: "Korean BBQ",
                         subtitle: "Here are some restaurants ",
                         description: "QPot, YakiniQ Korean BBQ, Kogi BBQ, Beque BBQ Grill, Gogi Time, K-Town BBQ, Ohgane Oakland"))
        //In-N-Out
        data.append(Item(image: UIImage(named: "InNOut")!,
                         rating: nil,
                         title: "In-N-Out",
                         subtitle: nil,
                         description: nil))
        
        //Shake Shack
        data.append(Item(image: UIImage(named: "ShakeShack")!,
                         rating: nil,
                         title: "Shake Shack",
                         subtitle: nil,
                         description: nil))
        //Cajun Seafood
        data.append(Item(image: UIImage(named: "BoilingCrab")!,
                         rating: nil,
                         title: "Cajun Seafood",
                         subtitle: "Here are some restaurants ",
                         description: "Boiling Crab, Ray's Crab Shack, Backyard Bayou, Cajun House, Crawstation "))
        //McDonald
        data.append(Item(image: UIImage(named: "McDonald")!,
                         rating: nil,
                         title: "McDonald",
                         subtitle: nil,
                         description: nil))
        
        //Jollibee
        data.append(Item(image: UIImage(named: "Jollibee")!,
                         rating: nil,
                         title: "Jollibee",
                         subtitle: nil,
                         description: nil))
        
        //Tacos
        data.append(Item(image: UIImage(named: "Tacos")!,
                         rating: nil,
                         title: "Tacos",
                         subtitle: "Here are some restaurants",
                         description: "Tacos El Patron, La Taqueria, Tacko, Taqueria Senaida's, La Victoria"))
        //Mexican Food
        data.append(Item(image: UIImage(named: "MexicanFood")!,
                         rating: nil,
                         title: "Mexican Food",
                         subtitle: "Here are some restaurants ",
                         description: "Tacos El Patron, La Taqueria, Tacko, Taqueria Senaida's, La Victoria"))
        //Hotpot
        data.append(Item(image: UIImage(named: "Hotpot")!,
                         rating: nil,
                         title: "HotPot",
                         subtitle: "Here are some restaurants",
                         description: "Boiling Point, Tasty Pot, Haidilao Hot Pot, Shabuya"))

        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
    //present card slider
        
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome to Bay Area Food Swipe!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
}

