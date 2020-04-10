#' PJO palettes
#'
#' Complete list of palettes
#'
#' Currently all palettes only contain 5 colours.
#' Palettes are derived using coolor.co and making personal adjustments.
#'
#' @export
pjo_palettes <- list(
  LightningThief = c('#3e685e', '#91c4af', '#d1e597', '#edd57d', '#d6b548'),
  SeaOfMonsters = c('#F8AB62', '#F58338', '#B74526', '#A12C20', '#531109'),
  TitansCurse = c("#0F396B", "#628FC4", "#B7ADC5", "#E3E0F1", "#30596D"),
  BatOfTheLabyrinth = c("#89211E", "#E68369", "#CA6328", "#FECA95", "#592124"),
  LastOlympian = c("#2F3F37", "#97A693", "#B7C2B4", "#6D633B", "#372B0C"),
  LastOlympian2 = c("#1A2E2A", "#586E5D", "#91A08B", "#B7C4B2", "#E1E6D0")
)

#' PJO colour scale
#'
#' @param palette Which palette in pjo_palettes to use for colour scale (default = 'LightningThief')
#' @param discrete logical. TRUE if the colour aesthetic is discrete or FALSE if the colour aesthetic is continuous
#' @param ... Additional arguments
#'
#' @rdname scale_color_pjo
#' @export
#'
#' @importFrom ggplot2 scale_color_manual scale_color_gradientn
scale_color_pjo <- function(palette = 'LightningThief', discrete = TRUE, ...) {

  pal <- pjo_palettes[[palette]]

  if (discrete) {

    scale_color_manual(values = pal, ...)

  } else {

    scale_color_gradientn(colours = pal, ...)

  }
}

#' PJO fill scale
#'
#' @param palette Which palette in \code{pjo_palettes} to use for fill scale (default = 'LightningThief')
#' @param discrete logical. TRUE if the fill aesthetic is discrete or FALSE if the fill aesthetic is continuous
#' @param ... Additional arguments
#'
#' @rdname scale_fill_pjo
#' @export
#'
#' @importFrom ggplot2 scale_fill_manual scale_fill_gradientn
scale_fill_pjo <- function(palette = 'LightningThief', discrete = TRUE, ...) {

  pal <- pjo_palettes[[palette]]

  if (discrete) {

    scale_fill_manual(values = pal, ...)

  } else {

    scale_fill_gradientn(colours = pal, ...)

  }
}

