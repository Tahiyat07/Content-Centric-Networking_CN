
packet AppRegistrationMsg {
    
    // ID that uniquely identifies the registering app
    long appID;
    
    // is it a content server or a client application?
    bool contentServerApp;
    
    // if content server, the prefixs for which content exist
    string hostedPrefixNames[];
    
    // a description
    string appDescription;
}


//
// Format of transport registration msg (sent by any transport to forwarder).
//
packet TransportRegistrationMsg {

    // ID that uniquely identifies the registering transport
    long transportID;

    // a description
    string transportDescription;

    // transport address (MAC like address)
    string transportAddress;

}

//
// Format of a prefix registration message used in registering
// additional FIB entries at the forwarding layer
//
packet PrefixRegistrationMsg {

    // prefix to register
    string prefixName;
    
    // face ID of the face to use as the outgoing face
    long faceID;
}


//
// Format of neighbour list message sent regularly by direct type
// transports to the forwrder.
//
packet NeighbourListMsg {
    
    // ID that uniquely identifies the transport
    long transportID;

    string neighbourAddressList[];
}


