#' Detectar cenário extremo de dengue
#'
#' Identifica semanas com número de casos acima de um limiar
#' estatístico (percentil 95) para cada município.
#'
#' @param dados data.frame com colunas municipio, semana, casos
#' @param percentil Percentil usado como limiar (padrão = 0.95)
#'
#' @return data.frame com coluna adicional `alerta_extremo`
#' @export

#' @importFrom dplyr %>%

detectar_cenario_extremo <- function(dados, percentil = 0.95) {

  dados %>%
    dplyr::group_by(municipio) %>%
    dplyr::mutate(
      limiar = stats::quantile(casos, probs = percentil, na.rm = TRUE),
      alerta_extremo = casos > limiar
    ) %>%
    dplyr::ungroup()
}
