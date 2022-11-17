# CustomView

## 1. **noStoryBoard세팅**
기존 노스토리보드 세팅으로 시작

## 2. **코드로 customView작성하고 roundRadius세팅**

```swift

class ViewController: UIViewController {

  let someView = UIView()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    setLayout()
    setConstraint()
    setStyle()
  }
  
  // MARK: - setLayout
  func setLayout() {
    self.view.addSubview(someView)
  }


  // MARK: - setConstraint
  func setConstraint() {
    
    //시스템은 뷰의 프레임과 자동 크기 조정 마스크를 기반으로 한세트의 제약조건을 자동으로 생성한다
    someView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
      someView.widthAnchor.constraint(equalToConstant:200),
      someView.heightAnchor.constraint(equalToConstant:130),
      someView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      someView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 100)
    ])
  }

  // MARK: - setStyle
  func setStyle() {
    self.view.backgroundColor = .white
    someView.backgroundColor = .systemYellow
    someView.layer.cornerRadius = 20
  }

}


#if DEBUG
// step1. opt + cmd + enter: preview패널 열기
// step2. resume 클릭
// setp3. opt + p: preview 돌리기

import SwiftUI

struct ViewControllerPresentable: UIViewControllerRepresentable {
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
  }
  
  func makeUIViewController(context: Context) -> some UIViewController {
    ViewController()
  }
}

struct ViewControllerPrepresentable_PreviewProvider: PreviewProvider {
  static var previews: some View {
    ViewControllerPresentable()
    //safeArea까지만 색상이 들어간 경우
      .ignoresSafeArea()
    //attribute inspector에서 이것저것 수정하면 코드 자동생성됨

  }
}

#endif
```

### 결과화면
![Simulator Screen Shot - iPhone 12 Pro - 2022-11-15 at 18 32 36](https://user-images.githubusercontent.com/76529148/201884246-7d2798fe-06e5-480f-86ec-e0b7472801fd.png)


### MainView안에서 SomeView를 생성하여 할당하기
MainVC안에서 아래와 같이 적용

```swift
    someView.layer.masksToBounds = false // 안에있는 것도 동그랗게 하고 싶을 때
    someView.layer.cornerRadius = 20 
    someView.layer.borderWidth = 20 // 가장자리 보더라인 두께
    someView.layer.borderColor = UIColor.systemGreen.cgColor // 가장자리 보더라인 색상
    someView.layer.masksToBounds = false // 안에있는 것도 동그랗게 하고 싶을 때
    
```



![Simulator Screen Shot - iPhone 12 Pro - 2022-11-15 at 18 32 36](https://user-images.githubusercontent.com/76529148/201889854-735903cf-89be-42de-b8eb-bb5f2cfd70ee.png)

### CustomView를 생성하여 할당하기
1. CustomView 클래스를 따로 생성
2. 접근하고 싶은 변수를 할당하고 didSet을 통해 해당 변수가 새로운 값을 받을 때에 접근할 수 있다.
3. @IBInspectable은 스토리보드상에서 조작이 가능하도록하는 어노테이션이고, @IBDesignable는 스토리보드상에서 바로확인가능하게 하는 어노테이션이다.
**borderWidth가 ConerRadius보다 넓으면 적용이 안됨**


```swift
// 해당 어노테이션을 달아두면 스토리보드상에서 아래 inspectable달아둔 요소들을 수정할때 바로바로 스토리보드에서 확인가능
@IBDesignable
class CustomView: UIView {
  
  // 해당 어노테이션을 달아두면 스토리보드의 패널에서 GUI상에서 조작할수가 있다. 사실 이프로젝트는 노스토리보드라 필요없다.
  // 그러면 GUI에서 값을 넣어둠으로 바로 줄 수 있다.
  @IBInspectable
  var cornerRadius: CGFloat = 0 {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.cornerRadius = cornerRadius
      
    }
  }
  
  @IBInspectable
  var borderWidth: CGFloat = 0 {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.borderWidth = borderWidth
      
    }
  }
  
  @IBInspectable
  var borderColor: UIColor = UIColor.clear {
    didSet {
      // 값이 설정이 됐을때 알수 있는 부분
      self.layer.borderColor = borderColor.cgColor
      
    }
  }
}
```

이렇게 할당하면 아래와 같이 접근 가능하다

```swift
    someView.layer.masksToBounds = false // 안에있는 것도 동그랗게 하고 싶을 때
    
    someView.cornerRadius = 20 // CustomView에서 바로 접근 가능
    someView.borderWidth = 10 // borderWidth가 ConerRadius보다 넓으면 적용이 안됨
    someView.borderColor = .systemGreen
```


![Simulator Screen Shot - iPhone 12 Pro - 2022-11-15 at 18 32 36](https://user-images.githubusercontent.com/76529148/201889854-735903cf-89be-42de-b8eb-bb5f2cfd70ee.png)
