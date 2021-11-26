Feature: HU01: Como usuario quiero buscar servicios de internet en un mapa para encontrarlos rápidamente.
    Scenario: E01:Visualización de mapa correcta
        TA01
        Given que estoy en el mapa de búsqueda de servicios
        When escriba el servicio que deseo y active el GPS
        Then el sistema me muestra una lista con los servicios de internet cercanos a mí en un mapa
        
        Examples:
            | Servicio | GPS | Lista | proveedores encontrados |
            | Internet  | ON  | "Home-Services-list" | Win, Nubyx, Movistar, Entel|

    Scenario: E02:Visualización de mapa incorrecta
        TA02
        Given Dado que estoy en el mapa de búsqueda de servicios
        When escriba el servicio que deseo y no active el GPS
        Then se pedirá permisos para la activación de GPS. 

        Examples:
            | Servicio | GPS | Mensaje |
            | Internet | OFF  | Active el GPS!  |