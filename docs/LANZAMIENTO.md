# Qué falta para sacar el juego al público

> **Estado (24/11):** hecho: premio sin «10.000 Robux», pack de 10Q al doble, probabilidades en todo lo aleatorio y bloqueo por país, bloqueo de sesión del guardado, estadísticas, límite de peticiones, copias de seguridad fuera del place y panel de admin. Decidido no hacer: acortar el camino a la pala 30 y nada de la sección 3 (insignias, misiones, rebirth…). Pendiente: premio definitivo, productos de Robux, ficha del juego, traducción y prueba en móvil barato.

Revisión del 24/11/2026 (bbogatell con Claude): código, mapa, rendimiento, economía, monetización y normas de Roblox.

## 1. Bloqueantes: sin esto no se debería publicar

### 1.1. El premio de 10.000 Robux con fósiles de pago es, en la práctica, una apuesta
- Las normas de Roblox tratan como **actividad regulada** los concursos y juegos de azar dentro de la plataforma con Robux (o algo de valor) como premio. En el foro de desarrolladores hay casos de cuentas sancionadas por sorteos de Robux.
- Aquí se juntan dos cosas: se **venden** fósiles dorados (199 / 799 / 1.999 R$) y cada uno da **probabilidad** de ganar 10.000 R$. Eso es pagar por una oportunidad de ganar dinero real.
- Además, el pack `Coins10q` (10Q monedas por 1.499 R$) da más que todas las palas juntas (5,5Q). Cualquiera puede pagar 1.499 R$, comprar la pala 30 al momento y empezar a comprar fósiles dorados.
- **Recomendación:**
  - No vender nunca fósiles dorados con Robux: se consiguen solo cavando.
  - Que el premio no sea Robux, sino algo del juego (un bicho único, un título, una estatua), o anunciarlo como evento sin compra.
  - Si se mantiene el premio en Robux, consultarlo antes con Roblox (soporte para desarrolladores).
  - Quitar o capar `Coins10q` y `Coins100t`, porque saltan toda la progresión.

### 1.2. Política de objetos aleatorios de pago (obligatoria)
- Roblox obliga a **mostrar las probabilidades numéricas** de todo lo aleatorio que se paga con Robux, directa o indirectamente: ruleta con giros de pago, fósil destacado, fósiles de restock y fósiles dorados.
- La tienda ya enseña probabilidades en el destacado y en los dorados. **Falta** en la ruleta, en la máquina de fósiles (si se paga con tierra comprada con Robux) y en los restock.
- En algunos países es obligatorio **ocultar** estas compras: hay que usar `PolicyService:GetPolicyInfoForPlayerAsync` → `ArePaidRandomItemsRestricted` y, si es `true`, quitar los giros de pago, los packs de fósiles y los dorados. **Ahora no se usa en ningún sitio.**
- En el cuestionario de madurez hay que declarar que hay objetos aleatorios de pago.

### 1.3. Los productos de Robux no existen
- Los 68 productos y el pase tienen `id = 0`: en el juego publicado no se puede comprar nada (sale «Próximamente»).
- Hay que crearlos en el Creator Dashboard y poner sus ids en `Config`.

### 1.4. Ficha del juego
- **Nombre:** sigue siendo «💎ENCUENTRA EL DIAMANTE💎», del juego viejo.
- **Descripción:** está **vacía**.
- **Cuestionario de madurez y cumplimiento:** sin él, Roblox restringe quién puede jugar. Hay que declarar violencia ligera (el bate) y los objetos aleatorios de pago.
- **Miniaturas:** imagen de 1920 × 1080 enseñando la jugabilidad.
- **Icono:** de 512 × 512 que se lea bien a 150 px.
- **Jugadores por servidor:** ahora `MaxPlayers` = 60. Debe ser 7, porque solo hay 7 bases.

## 2. Importantes: conviene tenerlos el primer día

### 2.1. Guardado
- No hay **bloqueo de sesión**: si alguien salta de servidor muy rápido puede cargar una partida vieja o duplicar cosas. La recomendación de la comunidad es pasar a **ProfileStore** (de loleris) en vez de hacerlo a mano.
- `Data` guarda con `SetAsync`; ProfileStore usa `UpdateAsync` y gestiona el bloqueo.

### 2.2. Analíticas
- No hay ni un evento de `AnalyticsService`.
- Sin datos no se puede saber dónde abandona la gente ni si la economía funciona. Mínimo:
  - embudo del tutorial (los 11 pasos);
  - eventos de economía (monedas que entran y salen, compras);
  - pala alcanzada.
- Roblox recomienda tener una retención D1 y un tiempo de sesión parecidos a juegos similares **antes** de invertir en anuncios.

### 2.3. Ritmo hacia el objetivo principal
- La intro y el cartel prometen 10.000 Robux «con la pala 30». Las palas 2–30 cuestan 5,5Q monedas en total.
- El mejor bicho (Divino) da como mucho 9B/s. Con 24 sitios llenos de los mejores bichos, solo la pala 30 (3,3Q) cuesta unas 5 h, y realista son decenas de horas.
- Llegar ahí sin pagar son muchas decenas de horas. Está bien para un juego largo, pero:
  - hay que decirlo claro en la intro, en vez de «¡Encuéntralo con la Pala 30!» al minuto 1;
  - y dar objetivos intermedios (ver 3.1).

### 2.4. Idioma
- Todo el texto está en español y la mayoría de jugadores de Roblox juegan en inglés.
- Hay que activar la **traducción automática** de la experiencia (Localization en el Creator Dashboard). Para que capte los textos creados por script, hay que revisar que no se monten concatenando trozos.

### 2.5. Tamaño del place
- ServerStorage tiene **766.000 instancias**, de las que unas **480.000 son copias de seguridad** (`CopiasSeguridad`, `MapBackup_Clipping`, `DecoracionExteriorBackup`, palas sueltas…).
- Todo eso se carga en cada servidor y hace lento el arranque, el Team Create y la publicación.
- Hay que pasarlas a un place aparte (o a un archivo `.rbxm`) antes de publicar. Los modelos de bichos y fósiles (`Models`, 263.000) sí son necesarios.

### 2.6. Rendimiento en móvil
- Mapa: 6.000 piezas y 14.600 texturas de studs. 86.000 instancias en el cliente.
- `StreamingMinRadius` = 3.600, así que en la práctica **se carga todo el mapa siempre**: se hizo a propósito para que no aparecieran cosas de golpe, pero en móviles de 2–3 GB puede quedarse sin memoria.
- Hay que probarlo en un móvil de gama baja real, con el MicroProfiler. Si va mal:
  - bajar el radio mínimo (por ejemplo, a 512);
  - y dejar `Persistent` solo lo que la cámara necesita lejos (bases, carteles).
- El servidor va sobrado (60 latidos por segundo, peor fotograma 18 ms).

### 2.7. Seguridad de los remotes
- `Request` no tiene límite de peticiones por jugador: un exploit puede llamarlo miles de veces por segundo.
- Hay que añadir un límite simple, por ejemplo 20 peticiones por segundo por jugador, y devolver `{ok = false}` si se pasa.
- Lo demás está bien:
  - `Debug` solo funciona en Studio;
  - los comandos de chat solo sirven al dueño;
  - las compras se validan en el servidor;
  - y los recibos repetidos ya no se dan dos veces.

## 3. Mejoras para retener jugadores (después del lanzamiento o justo antes)

### 3.1. Objetivos intermedios
- **Insignias (badges):** primera pala, parcela 5, primer Mítico, primer fósil dorado… Ahora no hay ninguna.
- **Misiones diarias:** cavar X, abrir X fósiles.
- **Índice de bichos («Bichopedia»):** 198 bichos para coleccionar, con recompensa por completar rarezas.
- **Rebirth / prestigio:** volver a la pala 1 a cambio de un multiplicador permanente. Es lo que alarga la vida de estos simuladores.

### 3.2. Social
- Recompensa por estar en el grupo (`IsInGroup`).
- Más dinero o velocidad si juegas con amigos.
- Invitar con recompensa: ya hay botón de invitar.
- Intercambio de bichos: es lo que más engancha en «Roba un huevo», pero es delicado (estafas, duplicados) y requiere el bloqueo de sesión primero.

### 3.3. Monetización sana
- Pases permanentes: x2 suerte, auto-cavar, más sitios en la base.
- Premium Payouts: más tiempo jugado de los usuarios Premium = más ingresos sin vender nada.

## 4. Lo que ya está bien
- Bucle principal claro y completo: cavar → fósil → llevarlo a la base → bicho → monedas → mejor pala → siguiente parcela. Más velocidad con la cinta, robos con el bate, máquina de fósiles, ruleta semanal, diario de 7 días y el terreno dorado como meta final.
- Tutorial de 11 pasos que se prueba de punta a punta sin atascarse.
- Interfaz adaptada a ordenador, móvil (solo horizontal), consola y VR.
- Guardado agrupado, protección si el DataStore falla al cargar y recibos sin duplicar.
- Servidor ligero y sin errores en la consola.
- Contenido muy grande: 198 bichos, 60 fósiles, 30 palas y 15 parcelas con su decorado.

## 5. Orden propuesto
1. Decidir qué pasa con el premio en Robux (1.1). Es lo único que puede tumbar el juego.
2. Política de objetos aleatorios de pago, `PolicyService` y cuestionario (1.2, 1.4).
3. Crear los productos y poner sus ids (1.3); quitar o capar los packs gigantes de monedas.
4. Nombre, descripción, icono, miniaturas y 7 jugadores por servidor (1.4).
5. Sacar las copias de seguridad del place (2.5) y probar en un móvil barato (2.6).
6. Analíticas y límite de peticiones (2.2, 2.7).
7. ProfileStore (2.1).
8. Traducción automática (2.4).
9. Publicar con poca promoción, mirar la retención D1 y ajustar el ritmo (2.3) y las insignias o misiones (3.1).

## Fuentes
- [Paid random items policy (Roblox Creator Hub)](https://create.roblox.com/docs/en-us/production/monetization/paid-random-items)
- [Content maturity (Roblox Creator Hub)](https://create.roblox.com/docs/production/promotion/content-maturity)
- [Retention (Roblox Creator Hub)](https://create.roblox.com/docs/en-us/production/analytics/retention)
- [Game icons](https://create.roblox.com/docs/production/promotion/game-icons) · [Thumbnails](https://create.roblox.com/docs/production/publishing/thumbnails)
- [Data stores best practices](https://create.roblox.com/docs/cloud-services/data-stores/best-practices.md) · [ProfileStore](https://devforum.roblox.com/t/profilestore/3190543)
- [Roblox 2025 H2 Terms of Service report (concursos y juegos de azar con Robux como actividad regulada)](https://oag.ca.gov/sites/default/files/Roblox%202025%20H2%20California%20AB587%20Terms%20of%20Service%20Report.pdf/Roblox%202025%20H2%20California%20AB587%20Terms%20of%20Service%20Report.pdf)
- [DevForum: Robux como premio en eventos del juego](https://devforum.roblox.com/t/in-game-roblox-events-winner-gets-robux-is-it-allowed/3601832)
