# exemplo implementação docker

Projeto de teste pra efetuar a build de uma imagem docker no github actions e 
a publicação no azure.

## Execução

### Compilação do projeto

 ```
docker image build -t img_app .
```

### Execução do projeto

 ```
docker run img_app
```