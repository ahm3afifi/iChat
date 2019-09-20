//
//  CollectionReference.swift
//  iChat
//
//  Created by Ahmed Afifi on 9/20/19.
//  Copyright © 2019 Ahmed Afifi. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReferene: String {
    case User
    case Typing
    case Recent
    case Message
    case Group
    case Call
}

func reference(_ collectionReference: FCollectionReferene) -> CollectionReference {
    return Firestore.firestore().collection(collectionReference.rawValue)
}
