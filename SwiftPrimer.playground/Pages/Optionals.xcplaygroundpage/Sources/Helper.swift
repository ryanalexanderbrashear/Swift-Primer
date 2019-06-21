import Foundation

public class Helper {
    public static func loadStateCodeDict() -> [String:String]
    {
        var states = [String:String]()
        
        states["AL"] = "Alabama"
        states["AK"] = "Alaska"
        states["AZ"] = "Arizona"
        states["AR"] = "Arkansas"
        states["CA"] = "California"
        states["CO"] = "Colorado"
        states["CT"] = "Connecticut"
        states["DE"] = "Delaware"
        states["DC"] = "District of Columbia"
        states["FL"] = "Florida"
        states["GA"] = "Georgia"
        states["HI"] = "Hawaii"
        states["ID"] = "Idaho"
        states["IL"] = "Illinois"
        states["IN"] = "Indiana"
        states["IA"] = "Iowa"
        states["KS"] = "Kansas"
        states["KY"] = "Kentucky"
        states["LA"] = "Louisiana"
        states["ME"] = "Maine"
        states["MD"] = "Maryland"
        states["MA"] = "Massachusetts"
        states["MI"] = "Michigan"
        states["MN"] = "Minnesota"
        states["MS"] = "Mississippi"
        states["MO"] = "Missouri"
        states["MT"] = "Montana"
        states["NE"] = "Nebraska"
        states["NV"] = "Nevada"
        states["NH"] = "New Hampshire"
        states["NJ"] = "New Jersey"
        states["NM"] = "New Mexico"
        states["NY"] = "New York"
        states["NC"] = "North Carolina"
        states["ND"] = "North Dakota"
        states["OH"] = "Ohio"
        states["OK"] = "Oklahoma"
        states["OR"] = "Oregon"
        states["PA"] = "Pennsylvania"
        states["RI"] = "Rhode Island"
        states["SC"] = "South Carolina"
        states["SD"] = "South Dakota"
        states["TN"] = "Tennessee"
        states["TX"] = "Texas"
        states["UT"] = "Utah"
        states["VT"] = "Vermont"
        states["VA"] = "Virginia"
        states["WA"] = "Washington"
        states["WV"] = "West Virginia"
        states["WI"] = "Wisconsin"
        states["WY"] = "Wyoming"
        
        return states
    }
    
    public static func lookupStateCode(code:String) -> String? {
        let stateDict = loadStateCodeDict()
        
        return stateDict[code]
    }
}




