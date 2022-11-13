# Inicio
puts".:HELLO WELCOME TO HAPPY DOG – PET SHOP:."
#Frases que serão exibidas para o usuário 

menus= {"start_menu"=>["Selecione a opção desejada:", "[1] COMPRAR ", "[2] SAIR"],
  "product_menu"=>["Conheça nossos produtos!","[1]Ração:R$257,50","[2]Brinquedos:R$60,50","[3]Acessório:R$34,25", "Informe qual o produto desejado:"]
}
frases= {"quantidade"=>["Informe a quntidade desejada:"],
  "start_menu1"=>["Informe 0 para retoenar ao menu inicial"]
}
# Váriavel que armazenará o valor do subtotal sendo inicializada com 0.00
subtotal=0.0

#Array hash Contendo os produtos e os repectivos valores
product={"racao" => 257.50 , "brinquedos" =>60.50, "acessorio"=>34.25}

#Função sair

def sair
  puts "A opção  selecionada foi SAIR!"
  puts ".:Obrigada pela visita até breve!:."
end 

#Inicio da execução do programa 
puts menus["start_menu"]
option=gets.chomp.to_i

# Estrutura de repetição caso a opção selecionada for comprar

    while option == 1
      puts menus["product_menu"]
      option=gets.chomp.to_i
          case option 
            when 1 
              puts frases["quantidade"]
              quantidade=gets.chomp.to_i
              subtotal+=product["racao"]*quantidade
            when 2
              puts frases["quantidade"]
              quantidade=gets.chomp.to_i
              subtotal+= product["brinquedos"]*quantidade
            when 3
              puts frases["quantidade"]
              quantidade=gets.chomp.to_i
              subtotal+= product["acessorio"]*quantidade
          end
          puts "Subtotal:#{subtotal}"
          puts frases["start_menu1"]
          menu=1
          menu=gets.chomp.to_i
              if menu==0
                puts menus["start_menu"]
                option=gets.chomp.to_i
              end
    end 
    puts sair
