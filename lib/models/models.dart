class UserModel {
  String? uid;
  String? firstName;
  String? lastName;
  String? email;

  UserModel({this.uid, this.firstName, this.lastName, this.email});

  //Receiving Data from Server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }

  //Sending Data to the Server
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "email": email,
      "firstName": firstName,
      "lastName": lastName,
    };
  }
}
