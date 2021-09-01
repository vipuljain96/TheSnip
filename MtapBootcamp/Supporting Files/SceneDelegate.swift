//
//  SceneDelegate.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 20/08/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        window  = UIWindow(windowScene: scene)
        Utilities().setUserDefaults(for: "false", value: "isLoggedIn")
        let isLoggedIn = Utilities().checkUserLoggedIn()
        print(isLoggedIn)
        if(isLoggedIn){
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let tabBar = storyBoard.instantiateViewController(identifier: "TabBarVC") as? TabBarVC
            if let tabBar = tabBar{
                let navigationController = UINavigationController(rootViewController: tabBar)
                window?.rootViewController = navigationController
            }
        }
        else{
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let welcomecontroller = storyBoard.instantiateViewController(identifier: "WelcomeVC") as? WelcomeVC
            if let welcomecontroller = welcomecontroller{
                let navigationController = UINavigationController(rootViewController: welcomecontroller)
                window?.rootViewController = navigationController
            }
        }
        print("inside scene")
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        print("inside scene did Disconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
        print("inside scene did become active")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
        print("inside scene will resign active")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
        print("inside scene will enter foreground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        print("inside scene did enter background")
    }


}

