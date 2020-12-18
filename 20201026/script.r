dat <- read.table('datforfor.txt', header = TRUE, sep = '\t')

plotdat <- dat[,1:4] #提取前4列
names(plotdat)[4] <- 'rmse' #改列名字 
plotdat$model <- names(dat)[4] #增加一列变量，并使其值等于列名字：字符、现在一共5列

plotdat2 <- dat[,c(1:3, 5)]#构建向量提取4列、将5变成i
names(plotdat2)[4] <- 'rmse'
plotdat2$model <- names(dat)[5]#也是5列
plotdat3 <- rbind(plotdat, plotdat2)#按照行合并


plotdat <- dat[,1:4]
names(plotdat)[4] <- 'rmse'
plotdat$model <- names(dat)[4]#plotdat一共5列
for(i in 5:9){print(i)
  onedat <- dat[,c(1:3, i)]
  names(onedat)[4] <- 'rmse'
  onedat$model <- names(dat)[i]#将model下的值等于列名字
  plotdat <- rbind(plotdat, onedat)
  }#for(循环条件){循环脚本}

library(ggplot2)
ggplot(plotdat, aes(x = MLR.R2, y = rmse, colour = model, shape = model)) + geom_point(size = 3)

aa <- 1:10
bb <- NULL
for (i in 1:10){
  bb[i] <- sum(aa[1:i])
}
bb
cumsum(aa)

i = 0
while(i < 10){
  print(i)
  i <- i + 1
}
