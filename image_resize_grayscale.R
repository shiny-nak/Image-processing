##Grayscale and Resize 
#install.packages("imager") https://cran.r-project.org/web/packages/imager/index.html
library(imager)
inputdata_name_bmp <- list.files(path = paste(getwd(),"/hoge",sep=""),recursive=T, full.names = T)

#Resize to any size (Images do not change proportions)
size<-512

for(i in (1:length(inputdata_name_bmp))){
  tmp <- load.image(inputdata_name_bmp[i])
  tmp<-grayscale(tmp)
  if(width(tmp)>height(tmp)){
    tmp<-resize(tmp,round((width(tmp)*size)/width(tmp)),round((height(tmp)*size)/width(tmp)))
  }else{
    tmp<-resize(tmp,round((width(tmp)*size)/height(tmp)),round((height(tmp)*size)/height(tmp)))
  }
  save.image(tmp,paste(getwd(),"/hoge2hoge2/",basename(inputdata_name_bmp[i]),sep=""))
}


