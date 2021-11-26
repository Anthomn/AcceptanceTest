Feature: HU10:Como usuario quiero visualizar ofertas en servicios de internet para mejorar mi elección.
    Scenario: E01: Visualización de ofertas correcta
        TA01
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de internet que me interese y presione el botón de ofertas
        Then entonces se me mostrara las ofertas con ese proveedor

        Examples:
            | Servicio |Proveedor| Lista |
            | luz | Claro |"Home-services-list-offert"  |
    
    Scenario: E02: Sin visualización de ofertas
        TA02
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de internet que me interese y presione el botón de ofertas
        Then se muestra un mensaje

        Examples:
            | Servicio | Proveedor|Mensaje |
            | luz | Nubyx |No existen ofertas! |