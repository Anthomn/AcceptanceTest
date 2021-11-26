Feature: HU04: Como usuario quiero buscar servicios de balones de gas en un mapa para encontrarlos rápidamente.
    Scenario: E01: Visualización de mapa correcto
        TA01
        Given que estoy en el mapa de búsqueda de servicios
        When escriba el servicio que deseo y active el GPS
        Then el sistema me muestra una lista con los servicios de balones de gas cercanos a mí en un mapa

        Examples:
            | Servicio | GPS | Lista |
            | Balon de gas  | ON  | "Home-services-list"  |
    
    Scenario: E02:Visualización de mapa incorrecta
        TA02
        Given Dado que estoy en el mapa de búsqueda de servicios 
        When escriba el servicio que deseo y no active el GPS
        Then se muestra un mensaje

        Examples:
            | Servicio | GPS | Mensaje |
            | Balon de gas  | OFF | Active el GPS! |