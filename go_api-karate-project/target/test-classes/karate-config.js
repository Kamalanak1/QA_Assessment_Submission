function fn() {
  var config = {};
  baseUrl = 'https://gorest.co.in/public/v2';
 
  accessToken = '622ca1120dd30fc6b34287bfc852e9d736de59a4a118b0981a6dd237628dd11a';

  if (accessToken && accessToken.length > 0) {
    karate.configure('headers', { Authorization: 'Bearer ' + accessToken });
  }
  return config;
}
