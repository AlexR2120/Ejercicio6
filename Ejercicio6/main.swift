// EJERCICIO 6

print("Listado de números romanos:\n",
      "I = 1\n",
      "V = 5\n",
      "X = 10\n",
      "L = 50\n",
      "C = 100\n",
      "D = 500\n",
      "M = 1000\n")

func romanoADecimal(_ romano: String) -> Int
{
    // Diccionario de los valores de los números romanos
    let valoresRomanos: [Character : Int] =
    [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
        
    var resultado = 0
    var valorPrevio = 1
    
    for letra in romano
    {
        if let valor = valoresRomanos[letra]
        {
            if valorPrevio < valor
            {
                resultado += valor
            }
            else
            {
                resultado -= valor
            }
            valorPrevio = valor
            
        }
    }
    return resultado
}

print("Introduzca un número romano:")

if let numeroRomano = readLine()
{
    let numeroDecimal = romanoADecimal(numeroRomano.uppercased())
    
    print("\(numeroRomano) = \(numeroDecimal)")
}

