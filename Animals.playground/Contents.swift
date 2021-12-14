import UIKit

class Animal{
    var name:String
    var health:Int = 150
    
    init (name:String){
        self.name = name
    }
    func displayhealth()->Self{
        print("Health of :\(name) is \(health)")
        return self  }
}

class Cat:Animal{
    
    override init(name:String){
        super.init(name: name)
        health=150
    }
    func run ()->Self{
        if (self.health >= 10){
            self.health -= 10
            print("Running")
        }
        return self
    }
    
    func growel()->Self{
        print("Rawe!")
        return self
    }
    
}
class Cheetah : Cat{
    override func run() -> Self {
        if (self.health>=50){
            print("speed runing")
            self.health-=50}
        return self
    }
    func sleep(){
        if(health<=200){
            health += 50
        }
    }
}

var animalcheetah = Cheetah(name: "chetah animal")
animalcheetah.run().run().run().run()


class Lion:Cat{
    override init(name:String){
        super.init(name: name)
        health=200
    }
    override func growel() -> Self {
        print("ROAR!!!! I am the King of Jungle")
        return self
    }
}
var lionanimal=Lion(name: "lion animal")
lionanimal.run().run().run()
lionanimal.growel()



