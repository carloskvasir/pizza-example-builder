# Exemplo do Padrão Builder em Ruby

Este projeto demonstra uma implementação original do padrão de projeto Builder em Ruby para construir um objeto `Pizza` com atributos opcionais.

## Estrutura do Projeto

pizza-example-builder/  
├── lib  
│   ├── pizza_builder.rb  
│   └── pizza.rb  
├── main.rb  
└── README  

## Descrição do Projeto

O objetivo deste projeto é demonstrar como aplicar o padrão de projeto **Builder** para construir objetos complexos de maneira flexível e organizada. Neste exemplo:

- A classe `Pizza` representa o produto final
- A classe `PizzaBuilder` fornece uma interface abstrata para construção
- A classe `TraditionalPizzaBuilder` implementa a construção concreta
- A classe `Pizzaiolo` atua como diretor coordenando a construção

## Como Executar

Certifique-se de ter o Ruby instalado em sua máquina. Em seguida, execute:

```bash
ruby main.rb
```

Margherita: Pizza Grande com: queijo  
Pepperoni: Pizza Grande com: queijo, pepperoni  

## Autor

Este exemplo foi desenvolvido por Carlos Kvasir Lima como parte do trabalho da disciplina de Arquitetura de Software.

## Licença

Este projeto está sob a licença Mozilla Public License 2.0. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.