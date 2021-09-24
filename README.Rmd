---
title: "HW 1"
author: "Alyssa Gjervold"
date: "9/14/2021"
output: github_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(readr)
library(dplyr)
```

## Bridge Data

```{r}
# bridge data for Minnesota 2020
bridge <- read_csv("MN20.txt")
str(bridge)

# some variables of interest isolated
# structure number, county code, place code, detour length, year built, avg daily traffic, condition ratings
names(bridge)
(bridge.subset <- bridge[,c(2,9,10,22,27,121)])
```