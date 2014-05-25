setwd("C:/Users/fredwu/Documents/RStudio/working folder/data/bootcamp")

# version one with segment1 and segment2
seg.matrix <- read.csv(file='invest_corr.csv', header=TRUE)
seg.matrix <- read.csv(file='select_corr.csv', header=TRUE)
seg.matrix[,1]
rownames(seg.matrix)<-seg.matrix[,1]
seg.matrix<-seg.matrix[,-1]

head(seg.matrix)

require(corrplot)
require(pheatmap)
pheatmap(seg.matrix)

seg.matrix <- as.data.frame(seg.matrix)
png(file='select_corrplot.png', width=1200, height=1200)
corrplot.mixed(as.matrix(seg.matrix),
               lower = "number",
               upper = "circle",
               is.corr=FALSE,
               tl.pos='lt',
               rect.lwd=10,
               cl.cex=1.6,
               order="AOE",
               tl.col="black",
               tl.cex=1.3,
               bg="white")
dev.off()

col4 <- colorRampPalette(c("#7F0000", "red", "#FF7F00", "yellow", "#7FFF7F", 
                           "cyan", "#007FFF", "blue", "#00007F"))

col3 <- colorRampPalette(c("#FF0000", "#FFC7C7", "#FFE09D", "#E89800", "#C3FFCB","#008400","#2D34FF"))

#,
#col=col4(20)


#read csv file
system.time(ggplot_v2<-fread("ggplot_v2.csv",header=T))
system.time(ggplot_v3<-fread("ggplot_v3.csv",header=T))

library(data.table)
