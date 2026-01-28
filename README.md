# arbovigilR

Pacote em R para apoio à vigilância epidemiológica de arboviroses, com foco em
detecção de cenários extremos e organização de dados de incidência por município.

## Objetivo

O pacote foi desenvolvido como exercício técnico para simular componentes
essenciais de sistemas de alerta precoce em saúde pública, incluindo:

- Ingestão de dados semanais por município;
- Processamento de séries temporais de incidência;
- Identificação de cenários extremos (surtos);
- Testes automatizados simulando dados de vigilância.

## Funcionalidades atuais

- "ler_dados_dengue()": leitura e padronização de dados de dengue;
- "detectar_cenario_extremo()": identificação de semanas com incidência extrema
   por município, usando limiares estatísticos;
- Testes com "testthat" simulando surtos abruptos.

## Tecnologias

- R
- tidyverse
- testthat
- usethis/devtools

## Observações

Este pacote não é uma implementação oficial do Infodengue, mas segue princípios
comuns a sistemas de vigilância epidemiológica e foi estruturado para permitir
evolução futura (nowcasting, previsões, integração climática).

## Status

Projeto em desenvolvimento, com fins educacionais e de portfólio técnico.
