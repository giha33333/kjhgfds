class RegistrationModel
{
  bool status = false ;

  RegistrationModel({required this.status});

  factory RegistrationModel.ConvertFromJson (Map<String,dynamic> jsonData)
  {
    return RegistrationModel(status: jsonData['status']);
  }
}