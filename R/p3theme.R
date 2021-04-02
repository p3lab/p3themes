
#' Add p3 theme
#'
#' @param ggplot_obj A ggplot object
#' @return A ggplot object with p3 ggthemes
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @export
#'

add_p3theme <- function(ggplot_obj) {

    #527aaf - fractal blue
    #ffbd59 - prism peach
    #ff914d - organizing orange

    ggplot_obj +
        scale_fill_manual(values = c("#527aaf","#ff914d","#ffbd59")) +
        theme(text = element_text(
                        size = 12,
                        family = "Helvetica Neue"),
                        axis.title.y = element_text(face = "bold", size = 12),
                        axis.title.x = element_text(face = "bold", size = 12),
                        axis.text.x = element_text(size = 10),
                        plot.title = element_text(face = "bold"),
                        legend.title = element_text(size = 11))
}
