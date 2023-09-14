# Función para realizar la suma
def suma(num1, num2)
  return num1 + num2
end

# Función para realizar la resta
def resta(num1, num2)
  return num1 - num2
end

# Función para realizar la multiplicación
def multiplicacion(num1, num2)
  return num1 * num2
end

# Función para realizar la división
def division(num1, num2)
  if num2 == 0
    return "Error: No se puede dividir por cero."
  else
    return num1.to_f / num2
  end
end

# Solicitar al usuario que elija una operación
puts "Calculadora Simple"
puts "Seleccione una operación:"
puts "1. Suma"
puts "2. Resta"
puts "3. Multiplicación"
puts "4. División"

operacion = gets.chomp.to_i

# Solicitar al usuario que ingrese dos números
print "Ingrese el primer número: "
numero1 = gets.chomp.to_f

print "Ingrese el segundo número: "
numero2 = gets.chomp.to_f

# Realizar la operación seleccionada
case operacion
when 1
  resultado = suma(numero1, numero2)
  operador = "+"
when 2
  resultado = resta(numero1, numero2)
  operador = "-"
when 3
  resultado = multiplicacion(numero1, numero2)
  operador = "*"
when 4
  resultado = division(numero1, numero2)
  operador = "/"
else
  puts "Operación no válida."
  exit
end

# Mostrar el resultado
if resultado.is_a?(Float)
  puts "#{numero1} #{operador} #{numero2} = %.2f" % resultado
else
  puts resultado
end
