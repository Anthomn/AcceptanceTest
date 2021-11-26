Feature: HU11:Como usuario quiero visualizar ofertas en servicios de balones de gas para mejorar mi elección.
    Scenario: E01: Visualización de ofertas correcta
        TA01
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de balon de gas que me interese y presione el botón de ofertas
        Then entonces se me mostrara las ofertas con ese proveedor

        Examples:
            | Servicio |Proveedor| Lista | Ofertas|
            | luz | Peru gas |"Home-services-list-offert"  | Por 5 balones acumulados, llevate el sexto a mitad de precio|
    
    Scenario: E02: Sin visualización de ofertas
        TA02
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de internet que me interese y presione el botón de ofertas
        Then se muestra un mensaje

        Examples:
            | Servicio | Proveedor|Mensaje |
            | luz | Ali gas |No existen ofertas! |
