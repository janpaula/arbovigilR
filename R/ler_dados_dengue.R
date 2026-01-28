#' Ler dados de dengue para vigilância
#'
#' Lê dados semanais de dengue a partir de um arquivo CSV,
#' padronizando colunas essenciais para vigilância epidemiológica.
#'
#' @param caminho_arquivo Caminho para o arquivo CSV
#'
#' @return Um data.frame com colunas padronizadas
#' @export
#'
ler_dados_dengue <- function(caminho_arquivo) {

  dados <- readr::read_csv(caminho_arquivo, show_col_types = FALSE)

  dados <- dados %>%
    dplyr::rename_with(tolower) %>%
    dplyr::select(
      municipio,
      semana,
      casos
    )

  return(dados)
}
