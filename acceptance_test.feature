Feature: login
  Scenario: Iniciar sesion con credenciales validas
    Given Dina Delgado tiene una cuenta en Easy Farm
    When ella ingresa las credenciales
    And presiona en el boton de iniciar sesion
    Then ingresará a la aplicacion como agricultor o proveedor

  Scenario: Iniciar sesion con credenciales invalidas
    Given Dina Delgado tiene una cuenta en Easy Farm
    When ella ingresa las credenciales con una contraseña incorrecta
    Then la aplicacion le dara un mensaje de insertar datos nuevamente

  Scenario: Iniciar sesion con contraseña invalida
    Given Dina Delgado ingresa su contraseña
    When la aplicacion muestre un mensaje de contraseña incorrecta
    And Dina presiona el boton de Recuperar contraseña
    Then ella ingresa su email para recuperar contraseña mediante codigo
