//Solidity Version
pragma solidity >= 0.6.4;

// Store a single data point and allow fetching/updating of that datapoint
contract SimpleStorage {
    
    // data point
    string public manufacturerName;
    string public supplierName;
    string public transporterName;
    string public retailerName;
    
    event myEventTest(string eventOutput1, string eventOutput2, string eventOutput3, string eventOutput4);
    
    function set(string memory manu, string memory supp, string memory transport, string memory retailer) public {
        manufacturerName = manu;
        supplierName = supp;
        transporterName = transport;
        retailerName = retailer;
        emit myEventTest(manu, supp, transport, retailer);
    }

    // function set_Part(string memory partmanufacturerName) public
    // {
    //     partmanufacturerName = partmanufacturerName;
    // }
    
    // function set_Tech(string memory supplierName) public
    // {
    //     supplierName = supplierName;
    // }

    // function set_Loc(string memory loc) public
    // {
    //     transporterName = loc;
    // }

    function get() public view returns (string memory, string memory, string memory, string memory) {
        return (manufacturerName, supplierName, transporterName, retailerName);
    }
    
}