abstract class Env {
  static Env create({String envName = "DEV"}) {
    return EnvDev();
  }

  String get baseUrl;
  String get secretPasswordFront => "1234567812345678";
  String get iVPasswordFront => "1234567812345678";

  /// register token expiration duration in milliseconds
  int get registerTokenExpiration => 259200000;

  String get registerUrl;
  String get verifyRegisterUrl;
  String get requestNewRegisterVerificationCodeUrl;

  String get loginUrl;
  String get verifyAuthUrl;
  String get refreshAuthUrl;

  String get profileUrl => "$baseUrl/user/";
  String get uploadProfilePictureUrl => "$baseUrl/user/upload/profile_picture";
  String get uploadBannerPictureUrl => "$baseUrl/user/upload/banner_picture";
  String get userLocation => "$baseUrl/user/location";

  
  /// Cores Services
  String get coreServicesUrl => "$baseUrl/cores/";

  /// Location Services
  String get locationServicesUrl => "${coreServicesUrl}location/";
  String get getCountryUrl => "${locationServicesUrl}country";
  String get getCityUrl => "${locationServicesUrl}city";
}

class EnvDev extends Env {
  @override
  String get secretPasswordFront => "1234567812345678";
  @override
  String get iVPasswordFront => "1234567812345678";

  @override
  String get baseUrl => "https://eb3d-103-10-66-13.ngrok-free.app";

  @override
  String get registerUrl => "$baseUrl/register/";

  @override
  String get requestNewRegisterVerificationCodeUrl =>
      "$baseUrl/register/new/verify";

  @override
  String get verifyRegisterUrl => "$baseUrl/register/verify";

  @override
  String get loginUrl => "$baseUrl/auth/login";

  @override
  String get refreshAuthUrl => "$baseUrl/auth/";

  @override
  String get verifyAuthUrl => "$baseUrl/auth/";
}
