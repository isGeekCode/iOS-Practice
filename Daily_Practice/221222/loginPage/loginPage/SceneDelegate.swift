//
//  SceneDelegate.swift
//  loginPage
//
//  Created by hyeonseok on 2022/12/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?


  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    guard let scene = scene as? UIWindowScene else { return }
    let window = UIWindow(windowScene: scene)
    self.window = window

    let mainVC = ViewController()
    window.rootViewController = mainVC
    window.makeKeyAndVisible()
    guard let _ = (scene as? UIWindowScene) else { return }
  }

  func sceneDidDisconnect(_ scene: UIScene) { }

  func sceneDidBecomeActive(_ scene: UIScene) { }

  func sceneWillResignActive(_ scene: UIScene) { }

  func sceneWillEnterForeground(_ scene: UIScene) { }

  func sceneDidEnterBackground(_ scene: UIScene) { }


}

