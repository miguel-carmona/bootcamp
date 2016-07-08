class Cuenta

	def initialize(nombre,cedula,num_cuenta,saldo)

		@name = nombre
		@id = cedula
		@account_num = num_cuenta
		@amount = saldo
	end

	def ingreso(saldo)
		@amount += saldo
	end

	def retiro(saldo)
		@amount -= saldo
	end

	def getAmount()
		@amount
	end

	def transferencia(cuenta2,saldo2)
		#tranfiero cuenta2 el saldo2
		@amount = self.getAmount + saldo2 
		#restar el sando que transferi de cuanta2
		cuenta2.retiro(saldo2)
		
	end

end
cuenta = Cuenta.new("pepito","32132145","123456789",50000.0)

cuenta.ingreso(150000.0)
cuenta.retiro(80000)
puts cuenta.getAmount



cuenta2 = Cuenta.new("rir","4654564564","57856786786",100000.0)

cuenta.transferencia(cuenta2,30000.0)
puts cuenta.getAmount
puts cuenta2.getAmount