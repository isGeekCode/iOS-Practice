# Layout - StackView
UI상에서 한 공간에 비슷한 형태의 UIView 연속적으로 존재할 때, 또 화면을 넘어갈 정도로 너무 많지않을때, 사용가능하다. 

## 코드로 만들기

```swift

// ViewController.swift

class ViewController: UIViewController {

  lazy var StackView: UIStackView = {
    let stackView = UIStackView()
    stackView.spacing = 10
    stackView.alignment = .fill // .center
    stackView.axis = .horizontal // 방향을 수평으로 설정
    stackView.distribution = .fillEqually //내부를 균등하게 배치
    stackView.translateAutoresizingMastIntoConstraints = false // 필수
    
    return stackView
  }
}

  func viewDidLoad() {
    super.viewDidLoad() 
    self.view.addSubView(stackView) // Step.1 addSubView
    NSLayoutConstraint.activate([
      // 예시
      // 위치: x,y중앙 세팅
      // 크기: top, leading 세팅
      <#contraints#> 
    ])
}

```

### lazy var

보통은 상단에 `var` 혹은 `let`으로 선언하여 데이터에 올리지만 `lazy`를 사용하면 사용하는 순간에 데이터에 올라가게 된다. 때문에 nil에러가 생기지않는다. 블럭함수로   `lazy var StackView: UIStackView = { }` 생성한다

## 세팅
### Step1. stackview 생성


stackView의 Constraint를 잡아도 보이지않는다. 빈 껍데기이기 때문이다. 내부에 있는 요소도 만들어준다, 

### Step2. stackview 내부요소 생성

```swift
  let someView = UIView()
  someView.backgroundColor = UIColor.systemYellow
  someView.translateAutoresizingMastIntoConstraints = false
  
  let someLabel = UILabel()
  someLabel.text = "내부\n라벨"
  someLabel.numberOfLines = 2 // 0으로 설정하면 복수줄로 사용가능하다.
  someLabel.translateAutoresizingMastIntoConstraints = false

  


  someView.addSubView(someLabel)
  NSLayoutConstraint.activate([
    // UILabel은 크기를 갖고 있다.
    someLabel.topAnchor.constraint(equalTo: someView.topAnchor, constant: 20),
    someLabel.leadingAnchor.constraint(equalTo: someView.leadingAnchor, constant: 20)
  ])
```


addArrangedSubView를 이용
