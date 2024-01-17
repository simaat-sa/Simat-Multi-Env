import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_options_requester.dart';

class LocalOptionsRequester<T> extends BaseOptionsRequester<T> {
  LocalOptionsRequester(
      {
      required super.valueMainTitleGetter,
      required List<T> options})
      : super(
      isRemotelySearch: false,
      immediatelyRequestOptions: true,
      fetcher: (searchTerm) async {
          return MyResult.isSuccess(options);
        });
}
