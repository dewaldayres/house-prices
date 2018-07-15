
# ===========
# pre-cleanup
# ===========

rm(list = ls())


# ============
# loading data
# ============

train <- read.table("./src/data/train.csv", header=T, sep=",", stringsAsFactors=F)
test <- read.table("./src/data/test.csv", header=T, sep=",", stringsAsFactors=F)


# ================
# combine datasets 
# ================

train$Set <- "train"
test$Set <- "test"
test$SalePrice <- NA

houses <- rbind(train, test)


# ============
# post-cleanup
# ============

# remove all objects except for the "passengers" dataset 
rm(list = ls()[ls()!="houses"])
