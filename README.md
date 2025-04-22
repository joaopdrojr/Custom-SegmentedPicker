Este projeto é um exemplo simples em SwiftUI de um seletor personalizado (custom segmented picker) entre duas opções: Saudação e Despedida.
Ele utiliza animações com matchedGeometryEffect para criar uma transição suave entre os botões selecionados.


🧠 Conceito
O customPicker permite que o usuário alterne entre duas abas — Saudação e Despedida — com um visual animado e uma resposta visual clara para o estado atual.

🔧 Funcionalidades
Animação suave entre abas usando matchedGeometryEffect
Destaque visual da aba selecionada com mudança de fundo e cor do texto
Atualização dinâmica do conteúdo com base na seleção do usuário


📄 Estrutura do código
@State var currentTab: Armazena a aba atual selecionada.
@Namespace var animation: Namespace usado para a animação com matchedGeometryEffect.
Duas Text views funcionam como botões de seleção para "Saudação" e "Despedida".
O texto exibido abaixo muda de acordo com a aba selecionada.

👨🏿‍💻 Desenvolvido por João Pedro 
Instagram: joaopdro.dev

