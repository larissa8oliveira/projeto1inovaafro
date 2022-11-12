# Inicio
puts '.:Olá Seja Bem-Vindo:.'
# Menu Inicial
puts 'Selecione a opção desejada:'
puts ' [1] COMPRAR '
puts ' [2] SAIR '
# Opção
subtotal=0.00
opcao = gets.chomp.to_i
while opcao == 1
  puts "A opção  selecionada foi COMPRAR!"
  puts "Conheça nossos produtos!"
  puts"-----------------------"
  puts "[1]Ração:R$257,25"
  puts "[2]Brinquedos:R$60,25"
  puts "[3]Acessório:R$34,25"
  puts"-----------------------"
   #Seleção de Produto 
  puts " Qual o produto desejado?"
  produto=gets.chomp.to_i
  valor=0.00
   #Condição para atribuição do valor do produto   selecionado
    case produto 
      when 1
        puts "Ração"
        valor= 257.25
      when 2
        puts " Brinquedos"
        valor= 60.25
      when 3
        puts "Acessório"
        valor= 34.25
    end
        #Informar a quntidade desejada do produto 
        #selecionado
        puts "Qual a quantidade desejada?"
        quantidade=gets.chomp.to_i
        #Calcular o subtotal do produto informado   
         #mutiplicando o valor pela quntidade
        subtotal=subtotal+(valor*quantidade) 
        puts "Subtotal:#{subtotal}"
        menu=1
        puts "Digite 0 para voltar ao menu inicial!"
        menu  = gets.chomp.to_i
        puts "O Valor informado foi #{menu}"
        
        if menu == 0 
          puts 'Selecione a opção desejada:'
          puts ' [1] COMPRAR '
          puts ' [2] SAIR '
          opcao = gets.chomp.to_i
          # Opção
          # Retornar ao menu inicial caso a quantidade 
        end      
end 
 puts "A opção  selecionada foi SAIR!"
 puts ".:Obrigada pela visita até breve!:."

