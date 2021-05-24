
#' Add p3 theme
#'
#' @param ggplot_obj A ggplot object
#' @param target The aesthetic to which the p3 ggtheme will be applied. The default value is "fill." The other option is "color."
#' @return A ggplot object with p3 ggtheme
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom glue glue
#' @export
#'

add_p3theme <- function(ggplot_obj, target = "fill") {

    #527aaf - fractal blue
    #ffbd59 - prism peach
    #ff914d - organizing orange

    base <- ggplot_obj +
        theme(text = element_text(
                        size = 12,
                        family = "Helvetica Neue"),
                        axis.title.y = element_text(face = "bold", size = 12),
                        axis.title.x = element_text(face = "bold", size = 12),
                        axis.text.x = element_text(size = 10),
                        plot.title = element_text(face = "bold"),
                        legend.title = element_text(size = 11))

    p3_theme <- c("#527aaf","#ff914d","#ffbd59")

    if (target == "fill") {
        out <- base +
            scale_fill_manual(values = p3_theme)
    }

    if (target == "color") {
        out <- base +
            scale_color_manual(values = p3_theme)
    }

    message(glue("p3 theme is applied to {target} parameter."))

    return(out)
}
