# 스토리보드 없이 프로젝트 시작하기

## 1. **프로젝트 생성**

프로젝트 생성시, UserInterface를 Storyboard로 설정

## 2. **스토리보드 파일 삭제**

스토리보드 파일 없이 빌드하는것이 목표이므로

**"Main.storyboard"**

파일을 삭제

(LaunchScreen.storyboard파일은 삭제하셔도 되고 안해도 됩니다! 첫화면이기때문에 큰 상관 없습니다.)

삭제만 하고 바로 빌드해서 실행시켜보면 Runtime Exception이 발생합니다. 이유는 프로젝트 설정에는 Main.storyboard라는 파일을 메인 스토리보드로 설정해놓았기 때문에 파일을 찾을 수 없어서 발생하는 에러입니다. 따라서 스토리보드 관련된 설정도 삭제해줘야합니다.

## 3. **스토리보드 설정 제거**

- target - general
    - 프로젝트 "General" 설정 > Deployment Info -> Main Interface칸에 적혀있던 "**Main**" 을 삭제해줍니다.
- info.plist 속성제거
    - Info.plist > Application Scene Manifest > Scene Configuration > Application Session Role > Item 0 > **Storyboard Name** 속성을 삭제합니다.

## 4. **window 구현**

### iOS 13 이후의 기기에 적용하는 방법

```swift
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = ViewController(nibName: nil, bundle: nil) // 루트 뷰컨트롤러 생성
        window?.makeKeyAndVisible()
    }
}
```

### iOS 13 이전의 기기에 적용하는 방법

Scene life cycle을 채택했을 때, iOS 13이전의 기기에서도 작동하려면 다음과 같은 코드를 AppDelegate에 추가해주면 된다.

```swift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // 13이상인 경우에는 SceneDelegate에서 이미 초기화 되었으니까 바로 return
        if #available(iOS 13.0, *) { 
            return true
        }
        
        // 13이전의 경우에는 SceneDelegate에서 해주었던 작업을 그대로 진행해주면 된다. 
        window = UIWindow()
        window?.rootViewController = MainViewController() // 초기 ViewController
        window?.makeKeyAndVisible()
        return true
    }
}
```