function fn() {

  karate.configure('ssl', true);

  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);

  if (!env) {
    env = 'qa';
  }



  var config = {
    env: env,
    myVarName: 'someValue',
    // urlBase: 'https://bice-qa.apigee.net'
    //urlBase: 'https://ms-categorias-finanzas-personales-100-srv-con.apps.ocp-qa.bice.local'
  }
  if (env == 'local') {
    var config = {
      env:env,
      // pathBase : 'https://bice-desa.apigee.net',
      // pathMova : 'https://desmova.bice.cl',
      // pathCoreQa:'https://coredev.bice.cl',
      // pathMask : 'https://ms-mascara-510-utilitario.apps.ocp-dev.bice.local/mascara/v5',
      // validacionesOpenshift: "http://localhost:8082/transferencia/mx/validaciones/v2/",
      // plantillaOpenshift: "https://ms-plantilla-mx-3-cred-depo.apps.ocp-dev.bice.local/transferencia-mx/plantilla/v3/plantilla"
    }

  } else if (env == 'dev') {
    var config = {
      env:env,
      apiUrl: 'https://api.realworld.io/api/'
      // pathBase : 'https://bice-desa.apigee.net',
      // pathMova : 'https://desmova.bice.cl',
      // pathCoreQa:'https://coredev.bice.cl',
      // pathMask : 'https://ms-mascara-510-utilitario.apps.ocp-dev.bice.local/mascara/v5',
      // validacionesOpenshift: "https://srv-validaciones-mx-3-cred-depo.apps.ocp-dev.bice.local/transferencia/mx/validaciones/v3/",
      // plantillaOpenshift: "https://ms-plantilla-mx-3-cred-depo.apps.ocp-dev.bice.local/transferencia-mx/plantilla/v3/plantilla",
      // pathPapeleta: "https://srv-papeleta-mesa-dinero-2-srv-con.apps.ocp-dev.bice.local/papeleta-mesa-dinero/v2/operacion/",
      // datosDescod: "https://srv-datos-descod-2-utilitario.apps.ocp-dev.bice.local/api-srvdatosdescod/v2/datos"
    }
  } else if (env == 'qa' || env == 'perf') {
    var config = {
      env:env,
    //   pathBase : 'https://bice-qa.apigee.net',
    //   pathMova : 'https://qamova.bice.cl',
    //   pathCoreQa:'https://coreqa.bice.cl',
    //   pathMask : 'https://ms-mascara-510-utilitario.apps.ocp-qa.bice.local/mascara/v5',
    //   validacionesOpenshift: "https://srv-validaciones-mx-3-cred-depo.apps.ocp-qa.bice.local/transferencia/mx/validaciones/v3/",
    //   plantillaOpenshift: "https://ms-plantilla-mx-3-cred-depo.apps.ocp-qa.bice.local/transferencia-mx/plantilla/v3/plantilla",
    //   datosDescod: "https://srv-datos-descod-2-utilitario.apps.ocp-qa.bice.local/api-srvdatosdescod/v2/datos",
    //   pathPapeleta: "https://srv-papeleta-mesa-dinero-2-srv-con.apps.ocp-qa.bice.local/papeleta-mesa-dinero/v2/operacion/",
    //  req : read('classpath:integration/data/requestOperacionFX1.json')
    }

    return  config
  }



  return config;
}