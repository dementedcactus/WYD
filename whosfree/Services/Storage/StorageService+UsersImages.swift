//
//  StorageService+UsersImages.swift
//  whosfree
//
//  Created by Luis Calle on 3/20/18.
//  Copyright © 2018 Richard Crichlow. All rights reserved.
//

import UIKit
import FirebaseStorage
import Toucan

extension StorageService {
    public func storeUserImage(image: UIImage, userID: String) {
        guard let resizedImage = Toucan(image: image).resize(CGSize(width: 800, height: 800)).image else {
            return
        }
        guard let data = UIImageJPEGRepresentation(resizedImage, 1.0) else { print("image is nil"); return }
        let metadata = StorageMetadata()
        metadata.contentType = "image/jpeg"
        let uploadTask = StorageService.manager.getUserImagesRef().child(userID).putData(data, metadata: metadata) { (storageMetadata, error) in
            if let error = error {
                print("uploadTask error: \(error)")
            } else if let storageMetadata = storageMetadata {
                print("storageMetadata: \(storageMetadata)")
            }
        }
        
        // Listen for state changes, errors, and completion of the upload.
        uploadTask.observe(.resume) { snapshot in
            // Upload resumed, also fires when the upload starts
        }
        
        uploadTask.observe(.pause) { snapshot in
            // Upload paused
        }
        
        uploadTask.observe(.progress) { snapshot in
            // Upload reported progress
            let percentProgress = 100.0 * Double(snapshot.progress!.completedUnitCount)
                / Double(snapshot.progress!.totalUnitCount)
            print(percentProgress)
        }
        
        uploadTask.observe(.success) { snapshot in
            // Upload completed successfully
            
            // set user's imageURL
            snapshot.reference.downloadURL(completion: { (url, error) in
                if let error = error {
                    print("error uploading url: \(error.localizedDescription)")
                } else if let url = url {
                    DatabaseService.manager.getUsers().child("\(userID)/profileImageURL").setValue(url.absoluteString)
                    print("\(url.absoluteString)")
                }
            })
            self.firebaseAuthService.signOut()
        }
        
        uploadTask.observe(.failure) { snapshot in
            if let error = snapshot.error as NSError? {
                switch (StorageErrorCode(rawValue: error.code)!) {
                case .objectNotFound:
                    // File doesn't exist
                    break
                case .unauthorized:
                    // User doesn't have permission to access file
                    break
                case .cancelled:
                    // User canceled the upload
                    break
                    
                    /* ... */
                    
                case .unknown:
                    // Unknown error occurred, inspect the server response
                    break
                default:
                    // A separate error occurred. This is a good place to retry the upload.
                    break
                }
            }
        }
    }
    
    
    
}

