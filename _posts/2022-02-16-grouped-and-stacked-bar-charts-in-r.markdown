---
layout: post
title: "Grouped and Stacked Bar Charts in R"
---

<style>
	.row {
		display: flex;
	}

	.column {
		flex: auto;
		padding:  5px;
	}
</style>

<a href="https://medium.com/@guslipkin/grouped-and-stacked-bar-charts-in-r-e5f5ac5637de"><em>Link to the Medium post</em></a>

Sometimes you have a chart that looks like one of these. You have a grouped chart that shows one thing and a stacked chart that shows another. But you really want to show the continent of origin and the condition in one chart.

<div class="row">
	<div class="column">
		<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/group.png" alt="A grouped bar chart">
	</div>
	<div class="column">
		<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/stack.png" alt="A stacked bar chart">
	</div>
</div>
<center><em style="color: grey;">A grouped bar chart and a stacked bar chart</em></center>

Maybe the chart you want looks a lot like this:
<br>
<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/stackAndDodge.png" alt="A grouped and stacked bar chart">
<center><em style="color: grey;">The chart that we will learn to build</em></center>

<br>
<center><hr style="width: 25%; height: .5px; color: black; background-color: black;"/></center>
<br>

First we load `ggplot2` so we can make our charts. Then we make some data and preview it. `set.seed(2022)` makes sure that our data is the same every time.

```
library(ggplot2)

set.seed(2022)
specie <- c(rep("sorgho", 6), rep("poacee", 6), 
            rep("banana", 6), rep("triticum", 6))
condition <- rep(c("normal" , "stress" , "N2") , 8)
continent <- rep(c("Europe", "Africa", "Asia", "South America",          
                   "North America", "Australia"), 4)
value <- abs(rnorm(24 , 0 , 15))
data <- data.frame(specie, condition, continent, value)
head(data)
```
<center><em style="color: grey;">Creating the data</em></center>
<br>

||**specie**|**condition**|**continent**|**value**
|:-----:|:-----:|:-----:|:-----:|:-----:
1|sorgho|normal|Europe|33.2982559377826
2|sorgho|stress|Africa|7.4199245988712
3|sorgho|N2|Asia|52.3689859681817
4|sorgho|normal|South America|4.85975695583929
5|sorgho|stress|North America|6.84424418650998
6|sorgho|N2|Australia|6.74199859289553

<center><em style="color: grey;">Previewing the data</em></center>
<br>

Our first instinct might be to throw both charts together using `grid.arrange` from the `gridextra` package. While this does show the information we want, it’s not pretty and doesn’t show the data the way we want it to.

```
one <- ggplot(data) +
  geom_bar(aes(x = specie, y = value, fill = condition), 
           position = "dodge", stat = "identity")
two <- ggplot(data) +
  geom_bar(aes(x = specie, y = value, fill = continent), 
           position = "stack", stat = "identity")
gridExtra::grid.arrange(one, two, nrow = 2)
```

<br>
<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/gridExtra.png" alt="A grouped chart and a stacked chart on top of each other">
<center><em style="color: grey;">Two plots graphed together with gridExtra::grid.arrange()</em></center>

<br>
<center><hr style="width: 25%; height: .5px; color: black; background-color: black;"/></center>
<br>

Not sure what to do, we come up with lots of plots that are almost right, but not quite.

<div class="row">
	<div class="column">
		<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/groupDodge.png" alt="A grouped bar chart and stacked bar chart without labels">
	</div>
	<div class="column">
		<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/interaction.png" alt="A stacked bar chart with interaction labels">
	</div>
	<div class="column">
		<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/facetWrap.png" alt="A stacked bar chart with interaction labels">
	</div>
</div>
<center><em style="color: grey;">Three attempts at making a grouped and stacked bar chart</em></center>
<br>

The last one looks like it could be promising. How did we do it?

```
ggplot(data) +
  geom_bar(aes(x = condition, y = value, fill = continent),
           position = "stack",
           stat = "identity") +
  facet_wrap(~ specie)
  ```

We use `ggplot` to set up the pipeline, `geom_bar` to create the bar chart, and then `facet_wrap` is what gives us the four separate charts in one, with one mini-chart for each species. If we can move the charts to be side-by-side, we’ll be a lot closer to the desired outcome. We can use `facet_grid` instead of `facet_wrap` to accomplish that.

```
ggplot(data) +
  geom_bar(aes(x = condition, y = value, fill = continent),
           position = "stack",
           stat = "identity") +
  facet_grid(~ specie)
```

<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/facetGrid.png" alt="Four stacked bar charts side-by-side">
<center><em style="color: grey;">Using facet_grid() to show multiple plots next to each other</em></center>
<br>

This looks much better, but we want it to look like one cohesive plot, rather than four smaller plots.

<br>
<center><hr style="width: 25%; height: .5px; color: black; background-color: black;"/></center>
<br>

I'm going to show you the code that does it, then walk through it so everything makes sense.

```
ggplot(data) +
  geom_bar(aes(x = condition, y = value, fill = continent),
           position = "stack",
           stat = "identity") +
  facet_grid(~ specie, switch = "x") +
  theme(strip.placement = "outside",
        strip.background = element_rect(fill = NA, color = "white"),
        panel.spacing = unit(-.01,"cm"))
```

<img src="/assets/posts/2022-02-16-grouped-and-stacked-bar-charts-in-r/stackAndDodge.png" alt="A grouped and stacked bar chart">
<center><em style="color: grey;">The graph that we came here for</em></center>
<br>

This looks pretty good and is exactly what we wanted. Like the charts before, we get 90% of the way there with `ggplot`, `geom_bar`, and `facet_grid`. The additions here are the `switch = "x"` argument in `facet_grid`, which moves the group panel with the species from the top of the chart to the bottom. Moving the `strip.placement` outside makes sure that the conditions are listed between the species and the chart. Making `strip.background` empty with a white border allows the group panel with the species to blend in with the white background of the chart. Lastly, changing the `panel.spacing` to `-.01` removes the small gap between each panel so that the chart appears to be one cohesive unit.

<br>
<center><hr style="width: 25%; height: .5px; color: black; background-color: black;"/></center>
<br>

The code for all the charts in this article is available <a href="https://gist.github.com/guslipkin/76da4207fcee7bcdea6707ecc1f4b9fa?file=allTogether.rmd">here</a>. If you want to see more from me, check out <a href="https://github.com/guslipkin">my GitHub</a> or <a href="https://guslipkin.github.io">guslipkin.github.io</a>. If you want to hear from me, I'm also on Twitter <a href="https://twitter.com/GusLipkin">@guslipkin</a>.

<br>
<center><em>Gus Lipkin is a Data Scientist, Business Analyst, and occasional bike mechanic</em></center>