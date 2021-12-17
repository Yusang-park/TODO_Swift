//
//  ViewController.swift
//  TODO
//
//  Created by 박유상 on 2021/12/17.
//

import UIKit

class ViewController: UIViewController {

    //Optional type (Nullable) nil(null)을 가질 수 있음
    var receivedMessage : String?
    
    //변수의 메모리 할당에는 strong, weak, unowned의 타입이 존재한다.
    //https://bongcando.tistory.com/21
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
//    outlet(컴포넌트)들과 action이 생성 및 연결되는 부분
//    일반적인 경우라면 개발자의 영역에서 사용하지 않음
    override func loadView() {
        super.loadView()
    }
    
    //해당 Controller가 생성될 때, 메모리 부족이 아니라면 1번만 실행 됨.
    //컴포넌트들의 속성을 초기화할 때, 이 곳에 넣음.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    //View가 모두 load된 후 렌더링 되기 바로 직전
    //이전 View로부터 받아온 것들 포함
    override func viewWillAppear(_ animated: Bool) {
        messageLabel.text = receivedMessage
     
        super.viewWillAppear(animated)
    }
    
    //View가 렌더링 된 이후 실행
    //애니메이션이나 API를 호출하는 영역
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    //View가 remove되기 직전, 직후
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}





//        is 연산자는 런타임에 expression 이 특정 type 으로 캐스팅 되는지 체크해줍니다. 가능하면 true 불가능하면 _false_를 return 합니다.
//        as 연산자는 컴파일 단계에서 캐스팅이 실행됩니다. 그러므로 언제나 특정 type 으로 캐스팅이 성공할 때만 사용이 가능합니다. 업캐스팅(Upcasting) 혹은 브릿징(Bridging) 에 사용됩니다.
//        as? 연산자는 런타임에 캐스팅하여 특정 type 의 옵셔널을 반환합니다. 성공하면 옵셔널 값을 반환하고 실패하면 nil 을 반환합니다.
//        as! 연산자는 런타임에 특정 type 으로 강제 캐스팅합니다. 캐스팅에 실패할 경우 런타임 에러가 발생할 수 있습니다.

//[weak self] in
//lazy initialzation
