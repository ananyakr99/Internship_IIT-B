#Page 114
sample_space<-c('b','g')
k<-expand.grid(sample_space,sample_space,sample_space)
print(k)

library("DiagrammeR")

nodes <- create_node_df(n=15,type = "number",
                        label = c("P","b","g","b","g","b","g","b","g","b","g","b","g","b","g"))

edges <- create_edge_df(from = c(1,1,2,2,3,3,4,4,5,5,6,6,7,7), 
                        to = c(2,3,4,5,6,7,8,9,10,11,12,13,14,15),
                        rel = "leading to")

graph <- create_graph(nodes_df = nodes, 
                      edges_df = edges, 
                      attr_theme="lr")

print(render_graph(graph))
