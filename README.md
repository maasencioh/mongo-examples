# mongo-examples

Ejemplos del taller de [Introducción MongoDB](https://github.com/beerjs/bogota/blob/master/meetings/Mongo.md) :beers:

  - [CRUD](#crud)
    - [Introducción](#introducción)
    - [Crear](#crear)
    - [Leer](#leer)
    - [Modificar](#modificar)
    - [Borrar](#borrar)
  - [Replica Set](#replica-set)
  - [Sharding](#sharding)

## CRUD
### Introducción
Se arranca un servidor MongoDB

```shell
$ mongod
```

Este servidor correrá por defecto en el puerto `27017` y la base de datos en `/data/db`. Por lo mismo para entrar como usuario desde otra pestaña se entra como se muestra a continuación.

```shell
$ mongo
```

Ya habiendo ingresado a la consola de mongo se accede a la base de datos donde se van a añadir los elementos.

```shell
> show dbs
> show collections
> use taller
> db.crud.insert({name: "Miguel"})
> show dbs
> show collections
```

Como ven, no se crea una base de datos o una colección sin que se haga una inserción o modificación.

### Crear
Como mostramos sin querer queriendo, para realizar una inserción hay que usar la siguiente sintaxis.

```js
db.collection.insert({key: value})
```

De manera que creando una base de datos de los asistentes:

```shell
> db.asistentes.insert({name: "Miguel", age: 23})
> db.asistentes.insert({name: "Ignacio", nickName: "Nacho"})
> db.asistentes.insert([
  {name: "ejemplo 1"},
  {name: "ejemplo 2"}
])
```

### Leer
Como buscar lo que hemos insertado? Hay dos métodos fundamentales para eso, `find` y `findOne`. La diferencia es que con `find` se devuelven todos los resultados que cumplen el criterio, mientras que `findOne` devuelve el primer resultado que lo haga.

```shell
> // lista de todos
> db.asistentes.find()
> // primer elemento de la lista
> db.asistentes.findOne()
> // busca asistente Miguel
> db.asistentes.find({name: "Miguel"})
> // primer intento de buscar name de ejemplo
> db.asistentes.find({name: "ejemplo"})
> // buscar name de ejemplo
> db.asistentes.find({name: /ejemplo/})
```
Los operadores de busqueda como `$gt` u otros se pueden consultar [acá](https://docs.mongodb.org/manual/reference/operator/query/)

### Modificar


### Borrar



## Replica Set


## Sharding
