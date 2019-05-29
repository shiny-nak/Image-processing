library(imager)

##edge filter+reduce color by k means
tmp <- load.image("sample.jpg")
size<-768

if(width(tmp)>height(tmp)){
  tmp<-resize(tmp,round((width(tmp)*size)/width(tmp)),round((height(tmp)*size)/width(tmp)))
}else{
  tmp<-resize(tmp,round((width(tmp)*size)/height(tmp)),round((height(tmp)*size)/height(tmp)))
}

b<-as.cimg(1-cannyEdges(tmp,alpha=.6))

tmp2<-tmp
#tmp2<-grayscale(tmp2)
tmp_df<-data.frame(r=c(R(tmp2)),g=c(G(tmp2)),b=c(B(tmp2)))

km<-kmeans(tmp_df,center=16,iter.max = 100)

r2<-km$cluster
g2<-km$cluster
b2<-km$cluster
for(i in 1:length(km$size)){
  r2[r2==i]<-km$centers[i,1]
  g2[g2==i]<-km$centers[i,2]
  b2[b2==i]<-km$centers[i,3]
}

tmp_df2<-data.frame(r=r2,g=g2,b=b2)


tmp2[,,,1]<-matrix(tmp_df2$r,nrow=width(tmp2),ncol = height(tmp2))
tmp2[,,,2]<-matrix(tmp_df2$g,nrow=width(tmp2),ncol = height(tmp2))
tmp2[,,,3]<-matrix(tmp_df2$b,nrow=width(tmp2),ncol = height(tmp2))

l <- imlist(b,tmp2)
plot(tmp)#save.image(tmp,"original.jpg")
plot(b)#save.image(b,"edge.jpg")
plot(tmp2)#save.image(tmp2,"kmeans16.jpg")
plot(mult(l))#save.image(mult(l),"edge_kmeans16.jpg")
plot(grayscale(mult(l)))#save.image(edge_kmeans_gray,"edge.jpg")

