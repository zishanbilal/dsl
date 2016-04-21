
class Customer {
    att name : String
}

class smartgrid.SmartMeter {
    att activeEnergy : Double
    att reactiveEnergy : Double
    rel customer : Customer {
        with upperBound 3
    }
    learned att isAnomaly : Boolean {
        from "this.activeEnergy"
        from "reactiveEnery"
        from "this.elements.parent"
        from "relations.parent.myAtt ^2 + relations.parent.myAtt / 2"
        using "GaussianClassifier"
    }

    globally learned att polynomialAtt : Double {
        from "TITI"
        from "GIGI"
        with precision 0.1
        using "PolynomialExtrapolation"
    }

}