### devPT

[Canal Youtube](https://www.youtube.com/@devpt4252)

## Requisitos para desenvolvimento

Este projeto está otimizado para trabalhar em Docker - suportado por Linux, MacOS e Windows (em WSL2).
Funciona de outras formas, mas esta é a suportada pelo desenvolvimento neste repositório.

Avançado: Como o Docker corre um pouco mais lento em MacOS e WSL2, uma forma de poupar algum tempo é usar o `npm` no sistema, e não dentro do Docker container. Assim, o `npm install` e `npm run dev` podem ser executados fora do container.

## Como correr o projeto em ambiente local

Clonar o projeto na máquina

```bash
git clone https://github.com/devpt-org/site.git
```

Entrar na pasta do projeto e correr este comando. Via Docker, estamos a ir buscar as dependências do Composer, para termos acesso ao Laravel Sail.

```bash
cd site
docker run --rm \
  -u "$(id -u):$(id -g)" \
  -v "$(pwd):/app" -w /app \
  composer:2 \
  composer install --ignore-platform-reqs
```

Copiar o ficheiro `.env.example` para `.env`.

```bash
cp .env.example .env
```

Executar o Sail "up" para levantar os serviços necessários. Pode demorar alguns minutos, pois vai construir imagens se necessário.
Ficará visível o output dos serviços.
```bash
./vendor/bin/sail up
```

Noutra sessão de terminal, corre este comando e ficas dentro de uma sessão no container.
```
./vendor/bin/sail bash
```

Executar estes comandos apenas a primeira vez:
```
php artisan key:generate
php artisan storage:link
```

Executar estes comandos cada vez que faças um pull, e haja alterações no `package-lock.json` (npm) ou `composer.lock` (composer).
```
composer install
npm install
```

Para abrir o projeto, no navegador abrir o endereço `http://localhost` ou `http://localhost:APP_PORT` se alteraste a `APP_PORT` no `.env`.

Para realizar a compilação em real-time (re-compila a cada alteração) dos recursos de JavaScript e CSS, executar:

```bash
npm run dev
```

### FAQs

*Recebo um erro que a porta está em uso.*

Pára outros sites que tenhas a correr na porta 80, ou adiciona a propriedade APP_PORT no ficheiro `.env` 
para indicar uma porta livre que deve ser usada pelo webserver do Sail. No exemplo mudamos para 8080.
```.env
APP_PORT=8080
```

*Ao tentar executar o sail recebo um erro que diz que o docker não está em execução.*

Certifica-te que tens o Docker a correr antes de executar o Sail.
