test_that("detecta cenário extremo em surto simulado", {

  dados <- data.frame(
    municipio = c("SP", "SP", "SP", "SP"),
    semana = as.Date(c(
      "2024-01-01", "2024-01-08",
      "2024-01-15", "2024-01-22"
    )),
    casos = c(5, 7, 10, 150)
  )

  resultado <- detectar_cenario_extremo(dados)

  expect_true(any(resultado$alerta_extremo))
})
