Feature: HU25:Como usuario quiero visualizar características de un servicio para tener mejor información sobre este.
    Scenario: E01:Visualización de características correcta
        TA01
        Given que me encuentro en el apartado de servicios
        When ya escogi un proveedor que me interese
        Then se me mostrara un apartado con las características.

        Examples:
            | proveedores | Lista | Caracterisitcas|
            | "Movistar" | "Home-services-list-features"  | - Fibra Optica , velocidad simetrica, rapida instalacion, alta cobertura|
    
    Scenario: E02:Visualización de características incorrecta
        TA02
        Given que estoy en el apartado de servicios 
        When no encontre proveedores
        Then se muestra un mensaje

        Examples:
            | proveedores | Mensaje |
            | "0" | No existen servicios cerca!  |
