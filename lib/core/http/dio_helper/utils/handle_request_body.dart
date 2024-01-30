import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_tdd/core/http/models/request_body_model.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class HandleRequestBody {

  FormData? call(RequestBodyModel params){
    var body = params.body;
    FormData formData = FormData.fromMap(body);
    bool haveFile = false;
    body.forEach((key, value) async {
      if ((value) is File) {
        haveFile = true;
        //create multipart using filepath, string or bytes
        MapEntry<String, MultipartFile> pic = MapEntry(
          key,
          MultipartFile.fromFileSync(value.path,
              filename: value.path.split("/").last),
        );
        //add multipart to request
        formData.files.add(pic);
      } else if ((value) is List<File>) {
        haveFile = true;
        List<MapEntry<String, MultipartFile>> files = [];
        for (var element in value) {
          MapEntry<String, MultipartFile> pic = MapEntry(
              key,
              MultipartFile.fromFileSync(
                element.path,
                filename: element.path.split("/").last,
              ));
          files.add(pic);
        }
        formData.files.addAll(files);
      }
    });
    return (haveFile||params.isFormData)?formData:null;
  }

}