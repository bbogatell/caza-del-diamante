# El juego: La Caza del Diamante

## Idea principal
Hay un **diamante escondido** bajo un campo de excavación de 240×240 studs, **al final del carril de parcelas**. Una **barrera** lo cierra hasta una fecha y hora (el **evento**, `Config.EVENT_TIME`, ahora el 25/10/2026 a las 18:00 UTC, provisional). Cuando se abre, todos cavan a la vez en todos los servidores. El diamante solo aparece cuando alguien cava cerca; **el primero que lo recoge gana el premio** (anunciado: 10.000 Robux).

Después viene una **cinemática final secreta** (el diamante sube, cielo con el ganador bailando, explosión de «10.000 ROBUX», el mapa se derrumba y se pasa a un **infierno** con una puerta «COMING SOON 100.000 ROBUX»). ⚠️ **El final no se revela a los jugadores** (ni en Discord).

## Tutorial
Los jugadores nuevos hacen un tutorial guiado de 11 pasos (tarjeta corta arriba con un icono grande y puntos de progreso, flechas que avanzan por el suelo hacia el objetivo y botones que brillan; mientras te manda a la parcela y de vuelta a la base corres como mínimo a 45):
1. Bienvenida.
2. Ir a la parcela 1.
3. Cavar (el primer fósil sale seguro a la 5.ª palada).
4. Cogerlo con E.
5. Llevarlo a la base.
6. Dejarlo en el suelo (se abre en 8 s).
7. Esperar al bicho.
8. Ver que da monedas.
9. Correr en la cinta.
10. Comprar la pala 2 (cuesta solo 50).
11. Resumen (Máquina de Fósiles, el diamante y el bate).

Se puede saltar. Mientras dura no te pueden pegar con el bate, y la ventana del diario espera a que acabe. Premio: 1 trampa de oso y 1 poder de hielo.

## Antes del evento (estilo «Roba un huevo»)
1. **Lobby y base:** cada jugador tiene una de las 8 parcelas del lobby como **base** (8 jugadores por servidor): todas iguales, de 50×50, y caben 12 cosas. Con monedas se puede **agrandar** dos veces (hacia atrás): 16 y 20 sitios.
2. **El carril:** por el portón del fondo del lobby se llega a **15 parcelas compartidas**, una detrás de otra (`Config.PLOTS`, diseño en `PARCELAS_Y_FOSILES.md`). Cada una es un hoyo enorme de terreno realista con su decorado de studs, cada vez más épico. Al final está el campo del diamante.
3. **Palas:** 30 (`PALAS.md`). **La parcela N pide la pala 2N−1 o mejor**; con una peor el suelo está «demasiado duro». Las pares cavan más rápido y ancho y pegan más. Se compran en la tienda.
4. **Cavar da tierra** (más en las parcelas avanzadas) y a veces **un fósil** (2 % por palada, `Config.FOSSIL.chance`), de la rareza que toque según la parcela (I, II o III). En la **Máquina de Fósiles** del lobby la tierra se canjea por un fósil de la rareza que elijas (si está desbloqueada); sale I, II o III al azar. Los hoyos se regeneran cada 5 min o al cavarlos al 80 % (aviso y te sacan del hoyo).
5. **Llevar el fósil a la base:** se lleva encima de la cabeza, más lento según el peso. Se puede **soltar en el suelo** con el botón «Soltar fósil» o la tecla **G** (cualquiera lo puede coger). **No se vende.** Otros te pueden pegar con la pala hasta que se te cae (la pala mejor pega más) y quedárselo.
6. **En la base** lo dejas **haciendo clic donde quieras del suelo**. Ahí está a salvo y **se abre con el tiempo** (10 s – 18 h, también sin estar conectado): levita, gira, brilla y suelta partículas, se agrieta al final y sale un **bicho**. Se puede **abrir ya con Robux** (precio según lo que le quede) (198 bichos, 13 rarezas, `BICHOS_DINOSAURIOS.md`). Los bichos **generan monedas cada segundo**; se pueden vender para hacer sitio.
7. **Eventos de fósiles raros:** durante un evento hay **un fósil raro (★/★★) por servidor**, enterrado con un haz de luz. Se avisa a todos cuando alguien lo saca y se ve a través de las paredes mientras lo lleva. Da bichos dos rarezas más arriba o bichos de Evento.
8. **Economía:** los precios de las palas siguen lo que generan los bichos: abrir la siguiente parcela cuesta lo que generan 6 bichos típicos de tu parcela en 4 min (parcela 1) … 2 h (parcela 14). Todo se ajusta en `Config` (`SHOVELS`, `DIG_VALUE`, `CREATURE_INCOME_MULT`, `FOSSIL`, `BASE`).
9. **Velocidad (se entrena, como en «Roba un huevo»):** fuera de tu base, al otro lado del caminito de la entrada, tienes una **cinta de correr**: súbete y cada paso suma velocidad (te salen zapatos con «+N» encima de la cabeza). La cinta se mejora (11 niveles, cada uno con su aspecto) pulsando con el ratón los botones del cartel de su derecha (rojo = dinero, morado = Robux); los **rastros** y los **multiplicadores de Robux** multiplican cada paso. Cuanta más velocidad, más rápido corres (de 20 a 400). Casi sin inercia: arrancas y paras en unos 0,2 s. El botón **Modo lento** (a la izquierda) te deja correr a la velocidad del principio cuando está en ON. El botón «x2 Velocidad» compra directamente el siguiente multiplicador (luego x4, x8, x16…).
10. **La pala importa en el evento:** cuanto mejor sea, más grande y más rápido cavas en el campo del diamante.
11. **Extras:** racha diaria de 7 días, ranking «TOP NIVEL», VIP x2 monedas (los IDs de Robux están aún a 0).

## Objetos
- **Bate** (todos): se noquea con el bate, no con la pala; a quien lleva un fósil le quita vida hasta que lo suelta.
- **Alfombra Mágica** (Robux): vuelas por el mapa (hay un techo invisible).
- **Trampas de Oso** (Robux, se gastan): quien la pise se queda atrapado 5 s.
- **Poder de Hielo** (Robux, se gasta): congela 5 s al jugador más cercano.

## Otros
- Se puede pegar a otros jugadores en el lobby y en el carril, no en el campo del diamante.
- Barreras invisibles en el borde del mapa y en el infierno.
- Ajustes: música/efectos con barra de volumen, temblor, partículas, números, correr con Shift.
- Hay un brief para el Discord del juego (lo creó otra IA): no hacer sorteos de Robux en Discord por las normas de Roblox.
- Referencia del género: «Roba un huevo» (*Steal an Egg*), ver `REFERENCIA_ROBA_UN_HUEVO.md`.
