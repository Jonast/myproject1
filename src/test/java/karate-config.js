function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    
    apiUrl: 'https://api.realworld.io/api/'
  }
  if (env == 'dev') {
    
    config.userEmail = 'javierkarate1@test.com'
    config.userPassword = 'karate1234'

  } if (env == 'qa') {

    config.userEmail = 'javierkarate2@test.com'
    config.userPassword = 'karate1234'
  }

  var accesToken = karate.callSingle('classpath:helpers/CreateToken.feature', config).authToken
  karate.configure('headers',{Authorization: 'Token ' + accesToken})
  

  return config;
}