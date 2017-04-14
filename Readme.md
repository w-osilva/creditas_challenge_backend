# Solução para o Desafio

Para solucionar o [Desafio](Desafio.md) eu optei pela utilização do pattern **Chain of Responsability**.


### Por quê Chain of Responsability?
Pelo que compreendi no enunciado, o objetivo principal era que não houvesse if/else verificando condição para processar um determinado comportamento para determinado tipo de pedido (Order).

Então criei a cadeia de pagamento, esta por sua vez tem a capacidade de avaliar cada pedido e processar as ações necessárias para cada tipo de produto.


### Sobre o código
Criei uma pequena estrutura de diretórios para organizar os arquivos.
```
app
    factories
    models
    payment
    services
```
###### No diretório **payment** estão as classes do Chain of Responsability

Para visualizar o output basta executar o seguinte comando no terminal
```
$ ruby bootstrap.rb
```

### Observações
Como o objetivo não era ter uma implementação real de um fluxo de pagamento, eu optei por criar minhas próprias classes representando o modelo de negócio (models) com o mínimo de atributos apenas para demonstrar o Pattern em funcionamento.

Confesso que não segui o fluxo apresentado no arquivo ```bootstrap.rb``` apresentado no [repositório original do desafio](https://github.com/Creditas/challenge/tree/master/backend).

Não adicionei testes unitários pois teria que adicionar gem (rspec)  