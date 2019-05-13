Feature: Busqueda de receta en tottus a traves de google

   Yo quiero encontrar la receta de Rollitos de canela

  Scenario: Busqueda correcta
    Given Yo abro la pagina de google
    When Yo escribo la palabra "tottus sucursales" en google
    Then Y presiono enter en google
    Then Y luego selecciono de la lista "Tottus Nataniel"
	Then Y luego busco y selecciono la sección "Recetas y mas"
	Then Y luego selecciono "Dificultad alta"
	Then Y luego busco "corona de Rollitos de canela"
	Then Y luego valido que la receta tenga "canela y azúcar rubia"

  Scenario: Busqueda erronea
    Given Yo abro la pagina de google
    When Yo escribo la palabra "tottus sucursales" en google
    Then Y presiono enter en google
    Then Y luego selecciono de la lista "Tottus Nataniel"
	Then Y luego busco y selecciono la sección "Recetas y mas"
	Then Y luego no encuentra la receta
