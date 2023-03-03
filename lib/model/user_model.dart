class UserModel
{
  String userName;
  String phone ;
  String uId ;

  UserModel({
    this.uId ='',
    required this.userName,
    required this.phone
});

  UserModel.fromFireStore(Map<String,dynamic>data) : this(
    uId: data['uId'],
    userName: data['userName'],
    phone: data['phone'],
  );

  Map<String,dynamic> toFireStore ()
  {
    return{
      'uId':uId,
      'userName' : userName,
      'phone' : phone,
    };
  }

}