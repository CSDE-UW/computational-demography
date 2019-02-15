---
title: Populating the Globe with World Pop
author: Neal Marquez
date: '2019-01-30'
slug: populating-the-globe-with-worldpop
categories:
  - technical-talk
tags:
  - data-source
---

This week's meeting of the CSDE-CWG was led by [Nathan Welch](http://www.nathangwelch.com/) from the Department of Statistics here at the University of Washington. Nathan walked us through his experience attending the Inaugural World Pop Winter School, a brief course that looks to introduce students, government workers, and NGO employees on the geographic resources produced by World Pop.  

## The Agenda of World Pop  
As stated on the [Word Pop website](https://www.worldpop.org/) the goals of the organization are to "Meet the needs of [contemporary data on human population distributions] through the provision of detailed and open-access population distribution dataset built using transparent approaches." What this entails is the creation of extremely high resolution maps, often at the 100m x 100m scale, of population estimates broken down by age, sex, and other demographic indicators, often of interest to researchers. The level of detail that these maps give us is extraordinary and because the information is comprehensive of the globe, any administrative unit that you could want to know the population of is calculated simply by aggregating the information across each of the 100m x 100m units with a given administrative boundary. In addition, these geographic distributions are estimated annually allowing not only for analysis in changes of magnitudes of populations, but also, shifts in the spatial distributions of populations.

![Image](https://www.worldpop.org/img/case_studies/case1/mp13.jpg "Image")

The utility of these measures are many, and the World Pop organization is also focused on building a database of measures related to population health that is based on their population distribution measures. For example, these population maps have been used to estimate the distance required to travel for a women to access to maternal care. Another strand of research combines population metrics with measures of incidence of malaria to map out risk of contracting malaria at high spatial resolutions in northern Namibia.  

## How Are the Measures Constructed?  

While these measures are impressive it's helpful to understand how they are constructed in order to know their limitations and which contexts would be most appropriate for using these measures. Most of the work that World Pop does involves dis-aggregating administrative population data that is collected from survey and census datasets and using principles [daysymetric redistribution](https://onlinelibrary.wiley.com/doi/10.1002/9780470979563.ch14). The ways in which the data is re-distributed is a function of other high resolution maps that co-vary with density of populations. These include night-light satellite, land coverage type, elevation, and an assortment of other high resolution maps. The exact methods are gone into further detail [elswhere](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0107042). What we should take away from this though is that these metrics are far from definitive. Dis-aggregation of data means that it is near impossible to validate the estimates of population at the scale that the population estimates are provided. This inability to validate models that provide estimates at fine geographic scales has been brought up in [other contexts as well](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0210645). Despite these drawbacks, World Pops work is widely used in both academic and governmental work and continues to act as a great center for resources related to detailed geospatial covariates.  

## Take Aways  

If you would like to check out any of these resources that World Pop creates are easily available through the [website portal](https://www.worldpop.org/). Thanks again to Nathan for giving this very informative talk and opening us open to the inner details of how World Pop measures are created.  
