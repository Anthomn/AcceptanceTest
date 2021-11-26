Feature: HU06: Como usuario quiero visualizar el mejor precio disponible para lograr un buen uso de mi dinero.
    Scenario: E01: Visualización de precios correcta.
        TA01
        Given que estoy en el apartado de servicios cercanos a mí
        When se encuentre un servicio 
        Then se muestra el precio comparado con otros proveedores

        Examples:
            | Servicios encontrados| Lista de precios | 
            | True  | "Home-services-list-price" | 

    Scenario: E02: Visualización de precios incorrecta
        TA02
        Given que estoy en el apartado de servicios cercanos a mí
        When no se encuentren servicios cerca
        Then el sistema muestra un mensaje

        Examples:
            | Servicios encontrados | Mensaje | 
            | False  | No existen servicios cerca!  | 