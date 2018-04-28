
# =========================================
# sale price by neighbourhood
# =========================================  

ggplot() + 
  geom_point() + 
  geom_jitter(data=houses %>% filter(Set=="train"), 
              mapping=aes(x=Neighborhood, y=SalePrice, color=SalePrice), 
              width=0.2, 
              height=0.2) + 
  labs(title="Sale price by neighborhood", 
       x="Neighborhood", 
       y="Sale Price") +
  theme(plot.title = element_text(hjust = 0.5), 
        legend.title=element_blank()) + coord_flip()






# ===========================
# sale price by neighbourhood
# ===========================  

ggplot() + 
  geom_boxplot(data=houses %>% filter(Set=="train"), 
              mapping=aes(x=Neighborhood, y=SalePrice, color=Neighborhood), 
              width=0.2, 
              height=0.2) + 
  labs(title="Sale price by neighborhood", 
       x="Neighborhood", 
       y="Sale Price") +
  scale_color_manual(values = colorRampPalette(brewer.pal(8, "Accent"))(25)) + 
  scale_y_continuous(breaks=seq(0,700000,by=50000), label=scales::comma) +
  theme(plot.title=element_text(hjust=0.5), 
        legend.position="none",
        axis.text.x=element_text(angle=90,hjust=1)) + coord_flip()



# ===========================
# sale price by neighbourhood
# ===========================  

ggplot() + 
  geom_point() + 
  geom_jitter(data=houses %>% filter(Set=="train"), 
    mapping=aes(x=LotArea, y=SalePrice, color=LotArea), 
    width=0.2, 
    height=0.2) + 
  labs(title="Sale price by neighborhood", 
       x="Lot Area", 
       y="Sale Price") +
  scale_color_manual(values = colorRampPalette(brewer.pal(8, "Accent"))(25)) + 
 #  scale_y_continuous(breaks=seq(0,700000,by=50000), label=scales::comma) +
  theme(plot.title=element_text(hjust=0.5), 
        legend.position="none") 




