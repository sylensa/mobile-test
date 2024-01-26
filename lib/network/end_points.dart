class EndPoints{
  static const String env = 'qa1';
  static const String apiV1 = '/api/v1';
  static const String baseUrl = "https://$env";
  static const String auth = "$baseUrl/connect/token";
  static const String dataBaseUrl = 'https://$env';
  static const String devicesBaseUrl = 'https://$env';
  static const String deviceStatusBaseUrl = 'https://$env';
  static const String graphBaseUrl = 'https://$env';
  static const String csBaseUrl = 'https://$env';
  static const String cropServiceBaseUrl = 'https://$env';
  static const String weatherBaseUrl = 'https://$env';
  static const String irrigationBaseUrl = "https://$env";
  static const String irrigationManagerBaseUrl = "https://$env";
  static const String lookupBaseUrl = 'https://$env';
  static const String gatewayBaseUrl = '';
  static const String user = "";

  static const String irrigationBlocks = "$dataBaseUrl";

  static const String userPrefs = "users";
  static const String updateAccount = "users";
  static const String updateSystem = "users";
  static const String changePassword = "users";
  static const String sendResetPassword = "";
  static const String cultures = "";
  static const String textResources = "";
  static const String currentWeather = "api/CurrentWeather";
  static const String dailyForecast = "api/DailyForecast";

  static const String updateFarm = "farms";

  static const String countries = "/Countries";
  static const String states = "/States";
  static const String timezones = "/Timezones";
  static const String irrigationMethods = "/IrrigationMethods";

  static const String soilTypes = "SoilTypes";
  static const String crops = "Crops";
  static const String varieties = "";


  static const String updateBase = "";
  static const String updateRepeater = "";
  static const String updateRemote = "";
  static const String updateDevice = "";
  static const String updateIoGroup = "";

  static const String setProgram = "";

  static const String changeProgramState = "$irrigationManagerBaseUrl";

}