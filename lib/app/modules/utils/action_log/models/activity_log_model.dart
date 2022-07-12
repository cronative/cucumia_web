class ActivityLogItem {
  String? userName;

  String? Actions;
  String? Role;
  String? country;
  String? state;

  String? createdDate;
  String? RequestTime;
  String? status;

  ActivityLogItem({
    this.userName,
    this.Actions,
    this.Role,
    this.state,
    this.country,
    this.status,
    this.createdDate,
    this.RequestTime,
  });

  ActivityLogItem.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    userName = json['userName'];
    state = json['state'];
    Actions = json['Actions'];
    Role = json['Role'];
    status = json['status'];
    createdDate = json['createdDate'];
    RequestTime = json['RequestTime'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    data['userName'] = userName;
    data['state'] = state;
    data['Actions'] = Actions;
    data['Role'] = Role;
    data['status'] = status;
    data['createdDate'] = createdDate;
    data['RequestTime'] = RequestTime;
    return data;
  }
}
