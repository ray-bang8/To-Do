//
//  ToDoListItemViewViewModel.swift
//  To Do
//
//  Created by Aray Muratova on 13.09.2023.
//
import FirebaseAuth
import FirebaseFirestore

import Foundation

class ToDoListItemViewViewModel: ObservableObject{
    init(){}
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
