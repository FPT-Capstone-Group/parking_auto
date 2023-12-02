class Autogenerated {
  int? code;
  List<Data>? data;
  bool? success;

  Autogenerated({this.code, this.data, this.success});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}

class Data {
  int? bikeId;
  String? model;
  String? registrationNumber;
  String? plateNumber;
  String? manufacture;
  String? status;
  int? userId;
  String? createdAt;
  String? updatedAt;
  dynamic cardId;

  Data(
      {this.bikeId,
      this.model,
      this.registrationNumber,
      this.plateNumber,
      this.manufacture,
      this.status,
      this.userId,
      this.createdAt,
      this.updatedAt,
      this.cardId});

  Data.fromJson(Map<String, dynamic> json) {
    bikeId = json['bikeId'];
    model = json['model'];
    registrationNumber = json['registrationNumber'];
    plateNumber = json['plateNumber'];
    manufacture = json['manufacture'];
    status = json['status'];
    userId = json['userId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    cardId = json['cardId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bikeId'] = this.bikeId;
    data['model'] = this.model;
    data['registrationNumber'] = this.registrationNumber;
    data['plateNumber'] = this.plateNumber;
    data['manufacture'] = this.manufacture;
    data['status'] = this.status;
    data['userId'] = this.userId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['cardId'] = this.cardId;
  
    return data;
  }
}