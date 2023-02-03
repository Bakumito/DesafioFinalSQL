# Desafio Final SQL - SMN
## Equipe 1: Thomaz, Lucas, Márcia, Gustavo Barbosa, Rafael e Mayla.

- As documentações das sprints e das procedures serão fator importante na avaliação.
- O nível de entrosamento da Equipe será avaliado e pode ser um fator de desclassificação.
- Ferramentas de geração de código SQL podem ser usadas para popular a base exclusivamente.
- Modelagem apresentada na ferramenta homologada pela SMN ganha ponto extra.

- Criar um repositório no GitHub para subir atualizações do desafio. (feito)
- Criar um Kanbán. (feito)
- Criar um cronograma de entrega com pelo menos 3 sprints. Prazos incompatíveis podem desclassificar a Equipe. (Em andamento)

>> Regra de Negocio Places Company

- A Places Company tem como objetivo criar um aplicativo que permita às pessoas procurarem lugares para visitar a qualquer hora do dia.
- O aplicativo contará com fotos, endereços, avaliações e vídeos de estabelecimentos e eventos cadastrados nele.
- Além disso, os usuários terão direito também a cupons em determinados locais.
- Para divulgar informações no app o estabelecimento precisa inscrever-se por meio de uma assinatura mensal custando 900R$.
- Para garantir que todos os dados publicados sejam validados, há um processo de verificação antes da postagem dos mesmos no app.
- Os usuários precisam logar para realizar suas avaliações nos locais indicados pelo app; além disso é possível realizar o cadastro somente com e-mail e senha desejada pelo usuário.
- Por fim, as ofertas disponibilizadas através dos cupons possuem data limite para usufrui-los e cada usuário pode usar um determinado cupom apenas uma vez.

Resumindo, precisamos de uma modelagem e um banco de dados que forneçam as informações do estabelecimento ou evento, que no caso seria sua avaliação, localização, cupons daquele evento e etc.
Contamos também com algo no BD que possa armazenar os vídeos feitos por cada estabelecimento/eventos ou usuário que esteve no local. Pode ser foto, vídeo, texto...
Para um estabelecimento ou evento aparecer no aplicativo, é necessário ele se cadastrar no aplicativo com seu e-mail, senha e CNP!J e logo em seguida fazer o pagamento.
A cada insert de avaliação de usuário, a média do estabelecimento/evento deve ser atualizada instantaneamente.
Também seria interessante fazer alguma validação no banco de dados através de procedure que ao executar verifica se aquele cupom já venceu ou não, se ele já tiver vencido é esperado que seja mudado seu status para desativado caso não tenha sido utilizado.
É necessário que uma procedure valide se aquele usuário pagou a mensalidade ou não, se caso ele estiver adimplente, o mesmo permanecerá com seu usuário ativo, se não, ele terá seu usuário desativado.
