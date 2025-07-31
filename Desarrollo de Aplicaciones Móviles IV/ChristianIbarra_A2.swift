var aux: String = ""
var opcionIngresada: String = aux

func deposito() { 
  print("\n")
  print("Ingrese la cantidad a depositar: ")
  print("\n")
  aux = readLine()!
  opcionIngresada = aux

if let cantidadADepositar = Double(opcionIngresada) {
  print("\n")
    print("Deposito de: $\(cantidadADepositar) realizado con éxito")
  print("\n")
  //Todo: agregar la logica para actualizar el saldo en la cuenta
  } else {
  print("Ingrese un cantidad valida")
  print("\n")
  }
}

while opcionIngresada != "4" {
  print("Bienvenido a Bancoppel")
  print("1. Depositar efectivo")
  print("2. Retirar efectivo")
  print("3. Consultar saldo") 
  print("4. Salir")
  print("\n")
  print("Ingrese una opción:")

  aux = readLine()!
  opcionIngresada = aux 

  switch opcionIngresada {
    case "1":
    deposito()
    print("\n")
    print("¿Desea continuar con otra operación? (SI/NO)")
    
    aux = readLine()!
    opcionIngresada = aux

    if opcionIngresada == "no" || opcionIngresada == "NO" || opcionIngresada == "n" ||
    opcionIngresada == "N" || opcionIngresada  == "No" || opcionIngresada == "nO"{
      print("Cerrando sesión, gracias por su visita")
      opcionIngresada = "4"
    }
    
    case "2":
    print("Retirar efectivo, proximamente...")
    print("\n")
    
    case "3":
    print("consultar saldo, proximamente...")
    print("\n")
    
    case "4":
    print("Gracias por su visita")
   

    default:
    print("Opción invalida")
    print("\n")
    
  }
  
}

