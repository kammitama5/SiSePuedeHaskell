module SixtySeven where

    data Price =
        Price Integer deriving (Eq, Show)

    data Manufacturer =
        Mini
        | Mazda
        | Tata
        deriving (Eq, Show)

    data Airline =
        PapuAir
        | CatqapultsR'Us
        | TakeYourChancesUnited
        deriving (Eq, Show)

    data Vehicle = Car Manufacturer Price
        | Plane Airline 
        deriving (Eq, Show)

    myCar = Car Mini (Price 14000)
    urCar = Car Mazda (Price 20000)
    clownCar = Car Tata (Price 7000)
    doge = Plane PapuAir

    isCar :: Vehicle -> Bool
    isCar n = case n of 
            (Car _ _) -> True 
            Plane _ -> False

    isPlane :: Vehicle -> Bool
    isPlane n = case n of 
            Plane _ -> True
            (Car _ _) -> False

    areCars :: [Vehicle] -> [Bool]
    areCars = map isCar

    getManu :: Vehicle -> Manufacturer
    getManu n = case n of 
            (Car x _) -> x
           
            

           
