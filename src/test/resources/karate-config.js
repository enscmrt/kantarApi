function fn() {
  var config = {};

  // Temel URL'yi ayarla
  config.baseUrl = 'https://backend-dev-lmw8.onrender.com/kantar/api';

  var userData = karate.read('classpath:users.json');

      config.currentUser = {
          email: userData.USER_EMAIL,
          password: userData.USER_PASSWORD
    };

  // Zaman aşımı ayarları
  karate.configure('connectTimeout', 10000);
  karate.configure('readTimeout', 10000);

  // Loglama ayarları
  karate.configure('logPrettyResponse', false); // Yanıtları detaylı şekilde yazdırmaz
  karate.configure('logPrettyRequest', false); // İstekleri detaylı şekilde yazdırmaz
  karate.configure('proxy', { url: 'http://proxy.server:8080' });
//  configure retry = { count: 3, interval: 20000 } // 3 kez dene, her seferinde 2 saniye bekle

  return config;
}