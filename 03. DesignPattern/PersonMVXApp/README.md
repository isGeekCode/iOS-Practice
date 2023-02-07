# MVC -> MVVM 패턴연습


## Before : MVC

- ViewController

```
├─ Model
│   
├─ View
│
└─ Controller

```


## After : MVVM
단순하게 Model, View, ViewModel만 있는 경우도 있지만 데이터를 파싱하고 연결해야한다면 별도의 클래스들이 중간중간 바인드 해줄 수 있다.
├─ Model
│   
├─ View
│
└─ ViewModel
