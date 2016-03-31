library(ggplot2)

qi <- read.table("Data\\quaInd.txt", header = TRUE, sep = "\t")

col <- ifelse(qi$prop >= 0.2, "grey", "black")
fname <- paste("Plots\\qi_it_", qi$Date[nrow(qi)], ".jpg", sep = "")

ggplot(qi, aes(x = Date, y = prop)) + geom_bar(stat="identity", fill = col, width = 0.2) +
  ylim(0, 1) + geom_hline(yintercept = 0.8, linetype = "dashed") + labs(y = "Proportion") +
  theme(axis.text = element_text(size = 6), axis.title = element_text(size = 6))

ggsave(filename = fname, width = 6, height = 5, units = "cm")
