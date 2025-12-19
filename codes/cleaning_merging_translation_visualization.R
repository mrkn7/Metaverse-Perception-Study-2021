# ==============================================================================
# TITLE: Metaverse Perception Analysis (2021 Data) - FULL PIPELINE
# AUTHOR: Erkan & Koçak
# DATE: 2025 (Data collected: Dec 2021)
# DESCRIPTION: Data cleaning, merging, translation, and visualization.
# ==============================================================================
# 1. SETUP & LIBRARIES ---------------------------------------------------------
if (!require("pacman")) install.packages("pacman")
pacman::p_load(
  tidyverse,    # Data manipulation (dplyr, ggplot2)
  ggstatsplot,  # Statistical tests with plots
  ggpubr,       # Publication ready themes
  sjPlot,       # HTML tables for regression
  scales,       # Percentage formatting
  wesanderson,  # Academic color palettes
  st)

# 1. Load Libraries
library(dplyr)
library(ggplot2)
library(ggstatsplot)
library(sjPlot)
library(ggsci)

# 2. Load Data
data <- read.csv("data.csv", sep = ",", encoding = "UTF-8", stringsAsFactors = FALSE)

######
data_meta <- data.frame(
  response = c("Yes", "No", "Not Sure"),
  percentage = c(54, 42, 4)
)
data_meta$response <- factor(data_meta$response, 
                             levels = c("Yes", "No", "Not Sure"))
ggplot(data_meta, aes(x = response, y = percentage)) +
  geom_bar(stat = "identity", fill = "grey40", width = 0.6) +
  geom_text(aes(label = paste0(percentage, "%")), 
            vjust = -0.5, # Move label slightly up
            size = 4, 
            family = "serif") + # Match font to document
  scale_y_continuous(limits = c(0, 65), expand = c(0,0)) +
  labs(
    x = "Participant Response",
    y = "Percentage (%)",
    title = "" 
  ) +
  theme_classic() +
  theme(
    text = element_text(family = "serif", size = 12),
    axis.text = element_text(color = "black"),
    axis.title = element_text(face = "bold"),
    axis.line = element_line(color = "black")
  )
############
df <- read.csv("data.csv", sep = ",", stringsAsFactors = FALSE)

df$socialmediatime <- trimws(as.character(df$socialmediatime))

time_map <- c(
  "1 veya daha az"   = "1 hour or less",
  "2-3"              = "2-3 hours",
  "4-5"              = "4-5 hours",
  "6-7"              = "6-7 hours",
  "8 ve daha fazla"  = "8 hours or more",
  "8 or more"        = "8 hours or more"
)

df$socialmediatime_eng <- time_map[df$socialmediatime]

order_list <- c(
  "1 hour or less",
  "2-3 hours",
  "4-5 hours",
  "6-7 hours",
  "8 hours or more"
)
df$socialmediatime_eng <- factor(df$socialmediatime_eng, levels = order_list)
plot_data <- df %>%
  count(socialmediatime_eng, name = "Frequency") %>%
  drop_na()
p <- ggplot(plot_data, aes(x = socialmediatime_eng, y = Frequency)) +
  geom_col(fill = "#4682B4", color = "black", linewidth = 0.5) +
  geom_text(aes(label = Frequency), vjust = -0.3, size = 3.3, family = "serif") +
  labs(
    x = "Daily Social Media Usage",
    y = "Frequency (Number of Participants)",
    title = NULL
  ) +
  theme_bw() +
  theme(
    text = element_text(family = "serif"),
    axis.text = element_text(size = 11),
    axis.title = element_text(size = 12, face = "bold"),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_line(color = "grey85")
  )
p
###########
data_dev <- data.frame(
  area = c("Social", "Education", "Industry", "Medicine", "Art"),
  frequency = c(208, 81, 34, 33, 25)
)
data_dev$area <- reorder(data_dev$area, -data_dev$frequency)
ggplot(data_dev, aes(x = area, y = frequency)) +
  geom_bar(stat = "identity", fill = "#2F4F4F", width = 0.7) +
  geom_text(aes(label = frequency), 
            vjust = -0.5, 
            size = 3.5, 
            family = "serif") +
  scale_y_continuous(expand = expansion(mult = c(0, 0.1))) +
  labs(
    x = "Development Area",
    y = "Frequency",
    title = ""
  ) +
  theme_classic() +
  theme(
    text = element_text(family = "serif", size = 12),
    axis.text = element_text(color = "black"),
    axis.title = element_text(face = "bold"),
    plot.margin = margin(10, 10, 10, 10)
  )
#######
data_r2 <- data %>% slice(-c(66, 70, 81, 157, 319, 330))
data_r2$gender <- factor(data_r2$gender, 
                         levels = c("Kadın", "Erkek"), 
                         labels = c("Female", "Male"))
data_r2$scares.me <- factor(data_r2$scares.me,
                            levels = c("Kesinlikle Katılmıyorum", 
                                       "Katılmıyorum", 
                                       "Ne katılıyorum ne katılmıyorum", 
                                       "Katılıyorum", 
                                       "Kesinlikle Katılıyorum"),
                            labels = c("Strongly Disagree", 
                                       "Disagree", 
                                       "Neither Agree nor Disagree", 
                                       "Agree", 
                                       "Strongly Agree"))
data_r2 %>%
  sjtab(fun = "xtab", var.labels=c("gender", "scares.me"),
        show.row.prc=T, show.col.prc=T, show.summary=T, show.exp=T, show.legend=T)

data_3 <- data %>% select(socialmediatime, spend.my.time)

data_3 <- data_3 %>%
  mutate(
    socialmediatime = factor(socialmediatime,
                             # Mevcut Türkçe Sıralama
                             levels = c("1 veya daha az", "2-3", "4-5", "6-7", "8 ve daha fazla", "8 or more"), 
                             # Yeni İngilizce Karşılıkları
                             labels = c("1 hour or less", "2-3 hours", "4-5 hours", "6-7 hours", "8 hours or more", "8 hours or more")),
    spend.my.time = factor(spend.my.time,
                           # Likert Ölçeği Sıralaması (Olumsuzdan Olumluya)
                           levels = c("Kesinlikle Katılmıyorum", 
                                      "Katılmıyorum", 
                                      "Ne katılıyorum ne katılmıyorum", 
                                      "Katılıyorum", 
                                      "Kesinlikle Katılıyorum"),
                           # İngilizce Karşılıkları
                           labels = c("Strongly Disagree", 
                                      "Disagree", 
                                      "Neither Agree nor Disagree", 
                                      "Agree", 
                                      "Strongly Agree"))
  )
data_3 %>%
  sjtab(
    fun = "xtab", 
    var.labels = c("Daily Social Media Usage", "Willingness to Spend Time in Metaverse"),
    show.row.prc = T, 
    show.col.prc = F, 
    show.summary = T, 
    show.exp = F, 
    show.legend = T,
    title = "Crosstabulation: Social Media Usage vs. Metaverse Willingness")

############
data_r2 <- data %>% slice(-c(66, 70, 81, 157, 319, 330))
fisher_r2 <- fisher.test(data_r2$gender, data_r2$scares.me)
data_r2$gender <- factor(data_r2$gender, 
                         levels = c("Kadın", "Erkek"), 
                         labels = c("Female", "Male"))
data_r2$scares.me <- factor(data_r2$scares.me,
                            levels = c("Kesinlikle Katılmıyorum", 
                                       "Katılmıyorum", 
                                       "Ne katılıyorum ne katılmıyorum", 
                                       "Katılıyorum", 
                                       "Kesinlikle Katılıyorum"),
                            labels = c("Strongly Disagree", 
                                       "Disagree", 
                                       "Neither Agree nor Disagree", 
                                       "Agree", 
                                       "Strongly Agree"))

ggbarstats(data_r2, gender, scares.me,
  results.subtitle = FALSE,
  xlab = "It scares me that something bad might happen in the Metaverse.",
  legend.title = "Gender",
  subtitle = paste0(
    "Fisher's Exact Test", ", p-value = ",
    ifelse(fisher_r2$p.value < 0.001, "< 0.001", round(fisher_r2$p.value, 3))
  )
)
##############
data_3 <- data %>% select(socialmediatime, spend.my.time)
data_3 <- data_3 %>%
  mutate(
    socialmediatime = factor(socialmediatime,
                             levels = c("1 veya daha az", "2-3", "4-5", "6-7", "8 ve daha fazla", "8 or more"), 
                             labels = c("1 hour or less", "2-3 hours", "4-5 hours", "6-7 hours", "8 hours or more", "8 hours or more")),
    spend.my.time = factor(spend.my.time,
                           levels = c("Kesinlikle Katılmıyorum", 
                                      "Katılmıyorum", 
                                      "Ne katılıyorum ne katılmıyorum", 
                                      "Katılıyorum", 
                                      "Kesinlikle Katılıyorum"),
                           labels = c("Strongly Disagree", 
                                      "Disagree", 
                                      "Neither Agree nor Disagree", 
                                      "Agree", 
                                      "Strongly Agree"))
  )
data_3 %>%
  sjtab(
    fun = "xtab", 
    var.labels = c("Daily Social Media Usage", "Willingness to Spend Time in Metaverse"),
    show.row.prc = T, 
    show.col.prc = F, 
    show.summary = T, 
    show.exp = F, 
    show.legend = T,
    title = "Crosstabulation: Social Media Usage vs. Metaverse Willingness")




