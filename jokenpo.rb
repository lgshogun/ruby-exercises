class Jokenpo
    def inicializacao
        puts "Olá, eu sou a máquina mais daora de JOKENPO. Vamos jogar!"
        jogarJokenpo
    end

    def jogarJokenpo
        @opcoesPedraPapelTesoura = ["pedra", "papel", "tesoura"]

        @resultadoOpcoes = {
            "pedra" => {
            "pedra" => "empate",
            "papel" => "perdeu",
            "tesoura" => "ganhou"
            },
            "papel" => {
            "pedra" => "ganhou",
            "papel" => "empate",
            "tesoura" => "perdeu"
            },
            "tesoura" => {
            "pedra" => "perdeu",
            "papel" => "ganhou",
            "tesoura" => "empate"
            }
        }

        puts "Escolha uma opção: pedra, papel ou tesoura"
        escolhaUsuario = gets.chomp.downcase

        @opcoesPedraPapelTesoura.include?(escolhaUsuario) ? (escolhaMaquina = @opcoesPedraPapelTesoura.sample;
            puts "Você escolheu #{escolhaUsuario}";
            puts "A máquina escolheu #{escolhaMaquina}";
            @resultadoJogo = @resultadoOpcoes[escolhaUsuario][escolhaMaquina];
            case @resultadoJogo
            when "ganhou"
              puts "Você ganhou! Parabéns!\n-----------"
            when "perdeu"
              puts "Você perdeu! Tente novamente!\n-----------"
            when "empate"
              puts "Você empatou! Jogue de novo!\n-----------"
              jogarJokenpo
            end) : (puts "Por favor, digite pedra, papel ou tesoura.\n-----------";
            jogarJokenpo)
            
    end
end

jogarJokenpo = Jokenpo.new
jogarJokenpo.inicializacao