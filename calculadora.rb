class ColdShelby
    def erroDigitacao
        erroDigitar = puts "--- Digite Corretamente! ---"
    end

    def inicializacao
        puts "Olá, me chamo Cold Shelby, sou uma calculadora das quatro operações, e estou aqui para resolver seu problemas!\nEu trabalho apenas com dois número e com operações simples de Somar, Subtrair, Multiplicar e Dividir.\n------------------------------------------"

        aceitarCalcular
    end

    def aceitarCalcular
        puts "Então, vamos começar? Responda com 1 para Sim, ou 2 para Não."

        case aceitarCalcularConfirmacao = gets.chomp
        when "1"
            puts "Certo! Vamos calcular."
            coletarNumeros
        when "2"
            puts "Tudo bem, até mais!"
        else
            erroDigitacao
            aceitarCalcular
        end
    end

    def coletarNumeros 
        puts "Digite o primeiro número:\n(Qualquer coisa diferente de um número será igual a 0. Para decimais, use X.X ao invés de X,X)"
        numero1 = gets.chomp.to_f

        puts "Digite o segundo número:\n(Qualquer coisa diferente de um número será igual a 0. Para decimais, use X.X ao invés de X,X)"
        numero2 = gets.chomp.to_f

        @numero1 = numero1
        @numero2 = numero2

        calcularQuatroOperacoes
    end

    def calcularQuatroOperacoes
        puts "------------------------------------------\nSeus números são: #{@numero1} e #{@numero2}\nAgora escolha, digitando o número, uma das quatro operações abaixo.\n 1 - Soma.\n 2 - Subtração.\n 3 - Multiplicação.\n 4 - Divisão."
        case confirmarQuatroOperacoes = gets.chomp
        when "1"
            resultado = @numero1 + @numero2
            puts "A soma de #{@numero1} e #{@numero2} é = #{resultado}"
        when "2"
            resultado = @numero1 - @numero2
            puts "A subração de #{@numero1} e #{@numero2} é = #{resultado}"
        when "3"
            resultado = @numero1 * @numero2
            puts "A multiplicação de #{@numero1} e #{@numero2} é = #{resultado}"
        when "4"
            resultado = @numero1 / @numero2
            puts "A divisão de #{@numero1} e #{@numero2} é = #{resultado}"
        else
            erroDigitacao
            calcularQuatroOperacoes
        end
        
        recomeçar
    end

    def recomeçar
        puts "------------------------------------------\nDeseja realizar mais outro calculo? Digite 1 para Sim e 2 para Não"
        case recomeçarCalculos = gets.chomp
        when "1"
            inicializacao
        when "2"
            puts "Obrigado pela utlização e ate mais!"
        else 
            erroDigitacao
            recomeçarCalculadora
        end
    end
end

calculadora = ColdShelby.new
calculadora.inicializacao