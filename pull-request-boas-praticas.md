# Pull Request #
A cultura de Pull Request é uma ótima ferramenta para mantermos boa qualidade de código e disseminar conhecimento, para tanto é necessário que levemos a sério sua utilização. Aqui você vai encontrar dicas de como abrir e avaliar Pull Requests bem como comentar e classificar seus comentários.

* [Qual o real valor do code review para uma equipe de desenvolvimento?](https://medium.com/trainingcenter/qual-o-real-valor-do-code-review-para-uma-equipe-de-desenvolvimento-f43f894c0a04)
* [Code review](https://en.wikipedia.org/wiki/Code_review)
* [How About Code Reviews?](https://slack.engineering/how-about-code-reviews-2695fb10d034)

## Como abrir ##
A abertura de Pull Request pode parecer uma ação sem tanta importância quanto sua **avaliação** e **aprovação**, mas a verdade é que ele tem tanta importância quanto as demais ações.  
É no momento da abertura onde é necessário darmos contexto da alteração e de escolhermos a branch destino onde a alteração deve ser fundida, para tanto segue dicas de como abrir uma Pull Request.

1. Escolha corretamente a branch destino de acordo com as mecânicas do time
2. Preencha a Pull Request de maneira a dar contexto na alteração
    * **Título**: descreva de forma sucinta e objetiva a alteração
    * **Descrição**: dê todo o contexto da atividade realizada
    * **Motivação**: descreva o porquê da alteração ter sido realizada
    * **Solução**: descreva qual solução foi implementada
    * **Atividades**: descreva, de forma resumida, as atividades exercidas na solução dada (implementação, testes, documentação, etc)
3. Escolha as pessoas para avaliar sua PR
    * As que fazem parte da equipe responsável pela aplicação
    * As que têm relação com o contexto da alteração, normalmente membros da sua equipe

### Exemplo de preenchimento de uma Pull Request ###

**Motivação**:

Há a necessidade de se obter os dados de identidade visual de uma divisão para ser utilizado no pré-cadastro que será feito no projeto X.

**Solução**:

Foi criado um novo endpoint (v1/usuarios/divisao) para se obter os dados da divisão dado um diretório web.

**Atividades**:

  * Implementado a busca de dados de navegação exclusiva pelo diretório web
  * Alterado código conforme críticas do Rubocop
  * Escrito testes
  * Atualizada documentação de API

## Como avaliar ##
Seu colega de desenvolvimento terminou a implementação da feature e adicionou você a etapa de code review onde você precisa validar algumas coisas.  
Não sabe por onde começar? Não se preocupe porque temos algumas dicas que podem te ajudar a guiar no processo de avaliação.

### Arquitetura do código ###
A primeira coisa que você deve avaliar é com relação a arquitetura do código. Como não existe uma fórmula mágica, seguem algumas perguntas que podem te ajudar no seu processo de avaliação.

* O código está bem modularizado?
* Os componentes estão bem definidos? As responsabilidades de cada componente / camada estão bem definidas?
* A lógica está fácil de ser reaproveitada por outras partes do sistema?
* A arquitetura definida para o projeto foi respeitada?

### Documentação ###
Aqui é válido observar se o Pull Request contém a documentação atualizada com a nova feature implementada, ou, no caso de um ajuste, se o ajuste realizado está documentado.  
No caso de uma API, o endpoint deve ser documentado; caso o projeto seja uma **gem**, os métodos públicos e as classes devem estar documentadas utilizando o padrão da Rubydoc.

### CHANGELOG ###
O changelog deve possuir as alterações que estão sendo implemendas nessa nova versão.

**Exemplo**:
```
# 1.1.0
  * [Feature] Minha funcionalidade incrível
```

### Style coding ###
O [style coding](../topicos_tecnicos/STYLE_GUIDE_RUBY) pode ser validado também, mas, para evitar problemas, o ideal é utilizar alguma ferramenta que faça a checagem disso (ex: Rubocop).  

## Classificando comentários ##

Em geral, existem 4 tipos de comentários que mais utilizamos, e que podemos identificá-los durante a análise de um PR.
Isso ajuda nosso colega autor do PR a ter um overview das observações e concentrar forças em determinado tipo de comentário.

* **Sugestão**: o código está funcional, mas uma proposta ou ideia para melhorá-lo cai bem, ai nisso pode incluir desde nome de variavel até aspectos de CleanCode.

* **Dúvida**: é um pedido de esclarecimento sobre uma decisão técnica ou de negócios, que pode (ou não) resultar em uma sugestão/impedimento.

* **Impeditivo**: o código, mesmo que funcional, impede a aprovação do PR. Nisso inclui requisitos de negócios, aspectos arquiteturais, testes mal elaborados, etc.

* **Comentário**: comentários em geral.

Alguns exemplos

```
[Sugestão]
Meu parceiro, esse método ficou grande, será que esse bloco de código não poderia ser colocado em um novo método privado?
#ficaadica
```
 
```
[Dúvida]
Fulano, porque usou result_acucar ao invés de resultado_soma? Caso não haja nada que impeça, eu te sugiro deixar resultado_soma.
É nóis, parça!
```

```
[Impeditivo]
H2, meu caro, todas as regras de negócios ficaram dentro do Controller, e os models não foram utilizados. Uma refatorada pode cair bem. #pas
```

```
[Comentario]
Fulano, achei daora a implementação desse algoritmo, assim que der, vou tentar refatorar o meu projeto desse jeito. Vlw man!
```

**Observação**: Caso perceba que está fazendo muitos comentários impeditivos, ou discordando da maior parte do código, talvez o Pull Resquest não seja o melhor lugar para essa conversa. 
Vá conversar pessoalmente para alinhar esses pontos. É melhor conversar com a pessoa em particular, antes de colocar uma enorme lista de comentários públicos.
