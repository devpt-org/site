### devPT

[Canal Youtube](https://www.youtube.com/@devpt4252)

## Correr Localmente

Clonar o projeto na máquina

```bash
    git clone https://github.com/devpt-org/site.git
```

Entrar na pasta do projeto

```bash
    cd site
```

Instalar as dependências

```bash
    composer install
    npm install
```

Duplicar o ficheiro `.env.example` para `.env` e alterar os dados se necessário.

```bash
    cp .env.example .env
```

Executar o Sail para executar todos os serviços necessários

```bash
    ./vendor/bin/sail up
```

Para abrir o projeto, no navegador abrir o endereço
`http://localhost` (ou `http://localhost:PORTA onde PORTA corresponde à porta que possa ter sido configurado mais acima. Por pré-definição é a 80).

Para realizar a compilação em real-time dos recursos de JavaScript+CSS, executar o seguinte comando:

```bash
    npm run dev
```

### FAQs

*Recebo um erro que a porta está em uso.*

Adiciona a propriedade APP_PORT para mudares a porta se a porta 80 já estiver 
a ser usada. Aqui usamos 8080 por exemplo mas pode ser outra.

```.env
    APP_PORT=8080
```

*Ao tentar executar o sail recebo um erro que diz que o docker não está em execução.*

Certifica-te que tens o docker daemon a correr antes de lançar o servidor pelo 
laravel sail. Para teres o daemon a correr manualmente:

```bash
    dockerd
```