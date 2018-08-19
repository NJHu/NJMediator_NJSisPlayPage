
import NJMediator

fileprivate let kMediator_Target_NameSpace = "NJSisPlayPage"

fileprivate let kMediator_Target_NJSisPlayPage = "NJSisPlayPage"

fileprivate let kMediator_Action_NativeFetchSisPlayController = "SisPlayControllerWithParams:"

extension NJMediator {

    public func Mediator_NJSisPlayPage_PlayController(jsonData: Any) -> UIViewController? {
        
        var params = [String: Any]()
        params["jsonData"] = jsonData
        
        let result = self.perform(nameSpace: kMediator_Target_NameSpace, target: kMediator_Target_NJSisPlayPage, action: kMediator_Action_NativeFetchSisPlayController, params: params, shouldCacheTarget: false)

        return result as? UIViewController
    }
}
