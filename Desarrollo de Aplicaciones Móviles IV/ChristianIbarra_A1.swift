struct Articulo {
  var nombre: String
  var precio: Int
  var cantidad: Int
}

var articulos: [Articulo] = [
  Articulo(nombre: "Zapatos", precio: 250, cantidad: 50),
  Articulo(nombre: "Playera", precio: 100, cantidad: 700),
  Articulo(nombre: "Pantalon", precio: 380, cantidad: 15),
  Articulo(nombre: "Sombrero", precio: 180, cantidad: 10),
]

var aux: String = ""
var opcionIngresada: String = aux  
var cuenta: Int = 0

while opcionIngresada != "2" {
  print("Bienvenido a la tienda online")
  print("------------------------------")
  print("---------Articulos------------")
  print("------------------------------")
  print("Opcion 1: ")
  print("Articulo: 1 \(articulos[0].nombre)")
  print("Precio: \(articulos[0].precio)")
  print("Stock: \(articulos[0].cantidad)")
  print("------------------------------")
  print("Opcion 2: ")
  print("Articulo: 2 \(articulos[1].nombre)")
  print("Precio: \(articulos[1].precio)")
  print("Stock: \(articulos[1].cantidad)")
  print("------------------------------")
  print("Opcion 3: ")
  print("Articulo: 3 \(articulos[2].nombre)")
  print("Precio: \(articulos[2].precio)")
  print("Stock: \(articulos[2].cantidad)")
  print("------------------------------")
  print("Opcion 4: ")
  print("Articulo: 4 \(articulos[3].nombre)")
  print("Precio: \(articulos[3].precio)")
  print("Stock: \(articulos[3].cantidad)")
  print("------------------------------")
  print("1. -Comprar articulo")
  print("2. -Salir")
  print("------------------------------")
  aux =  readLine()!
  opcionIngresada = aux
  if opcionIngresada == "1" {
    print("Ingrese el numero del articulo que desea comprar")

    aux =  readLine()!
    opcionIngresada = aux
    
    switch opcionIngresada {
      case "1":
      print("Ingrese la cantidad de zapatos que desea comprar:  ")
      
      aux =  readLine()!
      opcionIngresada = aux
      let cantidad = Int(opcionIngresada)!
      if cantidad <= articulos[0].cantidad {
        cuenta = cantidad * articulos[0].precio
        print("Usted compro: \(cantidad) zapatos, por un total de: $\(cuenta)")
        print("Total: $\(cuenta)")
        print("Gracias por su compra")
        print("\n")
      
      } else {
        print("No hay suficiente stock")
      }

      case "2":
      print("Ingrese la cantidad de playeras que desea comprar:  ")

      aux =  readLine()!
      opcionIngresada = aux
      let cantidad = Int(opcionIngresada)!
      if cantidad <= articulos[1].cantidad {
        cuenta = cantidad * articulos[1].precio
        print("Usted compro: \(cantidad) playeras, por un total de: $\(cuenta)")
        print("Total: $\(cuenta)")
        print("Gracias por su compra")
        print("\n")

      } else {
        print("No hay suficiente stock")
      }

      case "3":
      print("Ingrese la cantidad de pantalones que desea comprar:  ")

      aux =  readLine()!
      opcionIngresada = aux
      let cantidad = Int(opcionIngresada)!
      if cantidad <= articulos[2].cantidad {
        cuenta = cantidad * articulos[2].precio
        print("Usted compro: $\(cantidad) pantalones, por un total de: $\(cuenta)")
        print("Total: $\(cuenta)")
        print("Gracias por su compra")
        print("\n")

      } else {
        print("No hay suficiente stock")
      }

      case "4":
      print("Ingrese la cantidad de sombreros que desea comprar:  ")

      aux =  readLine()!
      opcionIngresada = aux
      let cantidad = Int(opcionIngresada)!
      if cantidad <= articulos[3].cantidad {
        cuenta = cantidad * articulos[3].precio
        print("Usted compro: $\(cantidad) sombreros, por un total de: $\(cuenta)")
        print("Total: $\(cuenta)")
        print("Gracias por su compra")
        print("\n")

      } else {
        print("No hay suficiente stock")
      }

      default:
      print("Opcion no valida")
      print("\n \n")
    
      
    }
   
  } else if opcionIngresada == "2" {
    print("Gracias por su compra")
  }
  

  
}