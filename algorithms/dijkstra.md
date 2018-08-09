hortest path alogirthm
The algorithm proceeds as follows:

Let Q = set of nodes in the graph
Let S = set of visited nodes

While  Q is not empty, pop the node , that is not already in S, from  with the smallest  distance(). In the first run, source node  will be chosen because () was initialized to 0. In the next run, the next node with the smallest  value is chosen.
Add node  to , to indicate that  has been visited
Update  values of adjacent nodes of the current node  as follows: for each new adjacent node ,
if  () +  <  (), there is a new minimal distance found for , so update  () to the new minimal distance value;
otherwise, no updates are made to  ().


my words:
Let Q = all nodes
Let S = visited nodes
set all nodes to inifinity first
On the first node, choose the path with smallest distance first
update the distance
repeat for the rest of the edges from that node. 
blah blah blah so easy

O(ElogV)
