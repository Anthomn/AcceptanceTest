Feature: HU08:Como usuario quiero visualizar ofertas en servicios de luz para mejorar mi elección.
    Scenario: E01: Visualización de ofertas correcta
        TA01
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de luz que me interese y presione el botón de ofertas
        Then entonces se me mostrara las ofertas con ese proveedor

        Examples:
            | Servicio | Proveedor | Lista |Ofertas|
            | Luz | Enel Peru |"Home-services-list-offert"  | Por pronto pago obten un descuento de 10 soles |
    
    Scenario: E02: Sin visualización de ofertas
        TA02
        Given que me encuentro en el apartado de servicios cercanos 
        When haya escogido un proveedor de luz que me interese y presione el botón de ofertas
        Then se muestra un mensaje

        Examples:
            | Servicio |Mensaje |
            | luz |No existen ofertas! |
