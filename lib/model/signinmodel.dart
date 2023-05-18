class SigninModel {
  bool? status;
  String? token;
  String? msg;

  SigninModel({this.status, this.token, this.msg});

  SigninModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['token'] = token;
    data['msg'] = msg;
    return data;
  }
}
