Feature: HU03: Como usuario quiero buscar servicios de luz en un mapa para encontrarlos rápidamente.
    Scenario: E01: Visualización de mapa correcto
        TA01
        Given que estoy en el mapa de búsqueda de servicios
        When escriba el servicio que deseo y active el GPS
        Then el sistema me muestra una lista con los servicios de luz cercanos a mí en un mapa

        Examples:
            | Servicio | GPS | Lista | proveedores encontrados |
            | Luz  | ON  | "Home-services-list"  | Luz del Sur, Enel Peru |
    
    Scenario: E02:Visualización de mapa incorrecta
        TA02
        Given Dado que estoy en el mapa de búsqueda de servicios 
        When escriba el servicio que deseo y no active el GPS
        Then se pedirá permisos para la activación de GPS.

        Examples:
            | Servicio | GPS | Mensaje |
            | Luz  | OFF | Active el GPS! |
