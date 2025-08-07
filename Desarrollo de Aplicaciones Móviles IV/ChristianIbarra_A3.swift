var aux: String = ""
var opcionIngresada: String = aux
var saldo: Double = 0.0

func consultarSaldo() {
  print("Su saldo es de: $\(saldo)")  
}

func deposito() { 
  print("\n")
  print("Ingrese la cantidad a depositar: ")
  print("\n")
  
  aux = readLine()!
  opcionIngresada = aux

if let cantidadADepositar = Double(opcionIngresada) {
   saldo = saldo + cantidadADepositar
    print("\nDeposito de: $\(cantidadADepositar) realizado con éxito")
  print("\n")
 
  consultarSaldo()
  } else {
  print("Ingrese un cantidad valida")
  print("\n")
  }
}


func retiro() {
  print("\n")
  print("Ingrese la cantidad a retirar: ")
  print("\n")
  
  aux = readLine()!
  opcionIngresada = aux

 guard let cantidadARetirar = Double(opcionIngresada) else {
   print("Ingrese un cantidad valida\n")
   return
 }
  
  guard cantidadARetirar <= saldo else {
    print("\nSaldo insuficiente")
    return
  } 
      saldo = saldo - cantidadARetirar
    print("\n")
    print("\nRetiro de: $\(cantidadARetirar) realizado con éxito")
    
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
    retiro()
    
    case "3":
    consultarSaldo()
    print("\n")
    
    case "4":
    print("Gracias por su visita")
   

    default:
    print("Opción invalida")
    print("\n")
    
  }
  
}

