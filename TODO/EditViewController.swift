//
//  EditViewController.swift
//  TODO
//
//  Created by 박유상 on 2021/12/17.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    //Segue를 사용해 화면 전환시 동작하는 함수
    //segue의 동작 시 다음 View를 위해 준비할 수 있다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //전환할 ViewController를 선언한다.
        //guard는 조건에 실패하면 else를 반환합니다. as?로 캐스팅 했을 때의 예외 처리
        //let = const
        guard let nextViewController =  segue.destination as? ViewController else {return}
        //전환할 ViewController의 title을 변경한다.
        nextViewController.title = "Segue로 이동 성공"
    }
    
    //수정 버튼과 연결된 액션 함수
    @IBAction func onClickPopBtn(_ sender: Any) {
        //Navigation Controller로 이동하는 경우
        //NavigationController에 쌓인 이전 화면의 Controller 선언
        guard let vc = self.navigationController?.viewControllers[0] as? ViewController else{return}
        //Title 및 해당 Controller의 변수를 textField 값으로 변경
        vc.title = "수정됨"
        vc.receivedMessage = textField.text!
        //Navigation pop
        self.navigationController?.popViewController(animated: true)
    }
}





//        is 연산자는 런타임에 expression 이 특정 type 으로 캐스팅 되는지 체크해줍니다. 가능하면 true 불가능하면 _false_를 return 합니다.
//        as 연산자는 컴파일 단계에서 캐스팅이 실행됩니다. 그러므로 언제나 특정 type 으로 캐스팅이 성공할 때만 사용이 가능합니다. 업캐스팅(Upcasting) 혹은 브릿징(Bridging) 에 사용됩니다.
//        as? 연산자는 런타임에 캐스팅하여 특정 type 의 옵셔널을 반환합니다. 성공하면 옵셔널 값을 반환하고 실패하면 nil 을 반환합니다.
//        as! 연산자는 런타임에 특정 type 으로 강제 캐스팅합니다. 캐스팅에 실패할 경우 런타임 에러가 발생할 수 있습니다.
