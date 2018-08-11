
import NJMediator

fileprivate let kMediator_Target_NameSpace = "NJSisPlayPage"

fileprivate let kMediator_Target_NJSisPlayPage = "NJSisPlayPage"

fileprivate let kMediator_Action_NativeFetchSisPlayController = "SisPlayControllerWithParams:"

extension NJMediator {

    public func Mediator_NJSisPlayPage_PlayController(video: String, topicId: String, videoSize: CGSize) -> UIViewController? {
        
        var params = [String: Any]()
        params["video"] = video
        params["topicId"] = topicId
        params["videoSize"] = videoSize
        
        let result = self.perform(nameSpace: kMediator_Target_NameSpace, target: kMediator_Target_NJSisPlayPage, action: kMediator_Action_NativeFetchSisPlayController, params: params, shouldCacheTarget: false)

        return result as? UIViewController
    }
}
