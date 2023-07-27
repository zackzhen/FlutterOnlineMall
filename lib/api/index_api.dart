import 'package:untitled/http/base_api.dart';
import 'package:untitled/service/custom_service.dart';

class IndexApi extends BaseApi {
  @override
  String path() {
    return "/toutiao/index";
  }

  @override
  RequestMethod method() {
    return RequestMethod.get;
  }

  @override
  String serviceKey() {
    return customServiceKey;
  }
}
