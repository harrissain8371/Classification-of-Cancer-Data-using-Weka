library(pROC)
data7=read.csv('Morticd7.csv')
head(data7,20)
data7 = data7[,c(1,4,7,10:39,6)]
#cancer.data.7= subset(data7, data7$Cause %in% c('A050','A058'))
cancer.data.7= subset(data7, data7$Cause %in% c('A050','A054'))
head(cancer.data.7,20)
#cancer.data.7$Cause=ifelse(cancer.data.7$Cause == 'A050',"1","0")
write.csv(cancer.data.7, file = "CancerData7.csv",na="0")
nrow(cancer.data.7)

#===========================================

data8=read.csv('Morticd8.csv')
data8 = data8[,c(1,4,7,10:39,6)]
#cancer.data.8= subset(data8, data8$Cause %in% c('A050','A058'))
cancer.data.8= subset(data8, data8$Cause %in% c('A050','A054'))
head(cancer.data.8,20)
write.csv(cancer.data.8, file = "CancerData8.csv",na="0")


# 'A046' - Malignant neoplasm of stomach
# 'A050' - Malignant neoplasm of trachea, bronchus and lung
# 'A051' - Malignant neoplasm of breast
# 'A053' - Malignant neoplasm of other and unspecified parts of uterus
# 'A054' - Malignant neoplasm of prostate
# 'A058' - Leukaemia and aleukaemia
