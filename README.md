# README

Desafío - Sistema e-Commerce (www.desafiolatam.com)

Descripción
Tenemos un sistema de e-commerce donde el diagrama de modelos se representa en la
siguiente imagen:

Uno de nuestros clientes nos ha solicitado una serie de mejoras, ya que nuestro actual sistema no se ajusta a sus necesidades.
Nos pide que extendamos algunas funcionalidades de tal manera que los productos puedan tener muchas variaciones, por ejemplo, una polera puede tener talla X, M y L a la vez que
cada una de ellas puede tener diferentes colores. El cliente es claro en indicarnos que cada
una de estas variaciones maneja un stock independiente al resto.
_
1
Otro de los problemas que presenta, es que sus productos no pueden clasificarse sólo con
un nivel de categorías, ya que la categoría "Electrodomésticos" puede tener otras contenidas
como línea blanca o refrigeradores. El cliente nos indica que no hay límite de cuántas
categorías anidadas pueden haber, sólo nos asegura que una categoría sólo pertenece a
una, osea no puede haber una categoría con dos padres.
Finalmente, nos indica que deben haber dos funcionalidades específicas: en el catálogo sólo
se muestra un producto de cada tipo, esto es, si existe un modelo de zapatilla roja y otra
negra, en el catálogo debe aparecer sólo una de ellas, esto implica que debe haber una
página de descripción del producto en donde ahí podamos ver y elegir los colores y la talla,
si una variación no tiene stock, no se puede comprar. Esto es importante, ya que si todas las
variaciones no tienen stock, no debe aparecer en el catálogo principal.
Por problemas de implementación, el modelo OrderItem no podemos modificarlo y tendrá
que guardar los mismos datos: order_id, product_id, quantity y price.
Por fortuna, el cliente ha encargado el desarrollo del front-end a otra empresa, por lo que
solo debemos asegurar calidad en la estructuración de los datos.
_
2
Instrucciones
Tip: Te recomendamos partir con la base del ejercicio realizado durante la lectura, en
material de estudio

1. Hacer un diagrama de modelos para cubrir las necesidades del cliente.
2. Crear la o las relaciones y modelos para manejar los productos y sus variaciones.
   Tip: utilizar scaffold e identificar los modelos que lo requieren.
3. Crear la o las relaciones y modelos para manejar las tallas y colores de las
   variaciones.
4. Implementar la solución para manejar distintos niveles de categorías y asegurarse
   que no tenga dos padres. También deberás implementar un test unitario para
   verificar este comportamiento
5. Generar un método o scope en las categorías, de tal forma que entregue una lista de
   cada categoría padre y otro de sus hijos, y los hijos de sus hijos, en todos los niveles.
6. Según su diseño, explicar al cliente cómo implementar la lista de productos del
   catálogo. (de un ejemplo en código). Si un modelo necesita código, debes entregarlo
   al cliente como parte de la implementación.
   Tip: se sugiere al momento de iniciar el proyecto en github, utilizar README.md para
   agregar las explicaciones que se solicitan.
7. Implementar o explicar las modificaciones (si las hay) al modelo OrderItem para que
   siga funcionando sin que afecte el resto del sistema.
   Tip: el modelo OrderItem tiene atributos ya establecidos, en caso de que la lógica de
   negocio requiera ingresar algún atributo extra, explicar el ¿por qué? en el archivo
   README.md
   \_
   3

   Nuestro cliente, a último minuto nos solicita que nuestro sistema soporte cupones
   de dos tipos:
   a) Uno para distribuir en redes sociales (1 cupón lo pueden ocupar muchas
   personas).
   b) Otro para clientes específicos (1 cupón solo lo puede ocupar un cliente
   específico).
   Los cupones pueden descontar un porcentaje de la compra o un monto específico.
   En el caso de un monto específico, si el cupón es mayor que la compra, el cupón no
   puede usarse en otra. Por temas de tiempo, sólo podrás entregarle una prueba de
   conceptos en la que debes incluir el modelado de los datos extendiendo el resultado
   de la pregunta 1 y además algunas implementaciones de código con los conceptos
   más importantes.
   Tip: Te recomendamos primero tomar o el a) o el b), y ya teniendo esto listo, empezar
   con el otro

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
