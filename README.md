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

Adicionar a propriedade APP_PORT para mudares a porta se a porta 80 já estiver 
a ser usada. Aqui usamos 8080 por exemplo mas pode ser outra.

```.env
    APP_PORT=8080
```

Certifica-te que tens o docker daemon a correr antes de lançar o servidor pelo 
laravel sail. Para teres o daemon a correr manualmente:

```bash
    dockerd
```

Correr o servidor localmente

```bash
    ./vendor/bin/sail up
```

No browser, abre o site localhost para veres a landing page do projeto. 
Não te esqueças da porta que configurares.

Para finalizar, na raiz do teu projeto no terminal corre o seguinte comando:

```bash
    npm run dev
```
