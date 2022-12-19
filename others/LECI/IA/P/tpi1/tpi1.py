from tree_search import *
from cidades import *
from blocksworld import *


def func_branching(connections,coordinates):
    #IMPLEMENT HERE
    # connections = {city: [neighboor1, neighboor2, distance]}
    # coordinates = {city: (x,y)}
    sum = 0
    for city in coordinates:
        sum += len(func_actions(connections,city)) - 1
    return sum / len(coordinates)

class MyCities(Cidades):
    def __init__(self,connections,coordinates):
        super().__init__(connections,coordinates)
        # ADD CODE HERE IF NEEDED

class MySTRIPS(STRIPS):
    def __init__(self,optimize=False):
        super().__init__(optimize)

    def simulate_plan(self,state,plan):
        #IMPLEMENT HERE
        for action in plan:
            state = self.result(state,action)
        return state

 
class MyNode(SearchNode):
    def __init__(self,state,parent,cost=0,heuristic=0,depth=0):
        super().__init__(state,parent)
        self.cost = cost
        self.heuristic = heuristic
        self.depth = depth

class MyTree(SearchTree):

    def __init__(self,problem, strategy='breadth',optimize=0,keep=0.25): 
        super().__init__(problem,strategy)
        #ADD HERE ANY CODE YOU NEED
        self.optimize = optimize
        self.keep = keep
        
        if self.optimize == 2 or self.optimize == 4:
            self.operations = problem[0]
            self.initial = problem[1]
            self.goal = problem[2]
            self.all_nodes = [self.initial]
            self.open_nodes = [0]
            self.strategy = strategy
            self.non_terminals = 0
            self.solution = None
            
            

    def astar_add_to_open(self,lnewnodes):
        #IMPLEMENT HERE
        self.open_nodes.extend(lnewnodes)
        return self.open_nodes.sort(key=lambda x: self.all_nodes[x].cost + self.all_nodes[x].heuristic)
    
    def get_path_tuple(self,node):
        if node[1] == None:
            return [node[0]]
        path = self.get_path_tuple(self.all_nodes[node[1]])
        path += [node[0]]
        return path


    # remove a fraction of open (terminal) nodes
    # with lowest evaluation function
    # (used in Incrementally Bounded A*)
    def forget_worst_terminals(self):
        #IMPLEMENT HERE
        pass

    # procurar a solucao
    def search2(self):
        #IMPLEMENT HERE
        if self.optimize == 1:
            # (state,parent,cost,heuristic,depth)
            # ('Faro', 502, 739, 0.0, 8)
            # ('Guarda', 503, 741, 455.67203118032165, 8)
            self.all_nodes[0] = (self.problem.initial, None, 0, 0, 0)
            while (self.open_nodes != []):
                nodeID = self.open_nodes.pop(0)
                node = self.all_nodes[nodeID]

                if self.problem.goal_test(node[0]):
                    self.solution = node
                    self.terminals = len(self.open_nodes) + 1
                    return self.get_path_tuple(node)


                lnewnodes = []
                self.non_terminals += 1

                for a in self.problem.domain.actions(node[0]):
                    newstate = self.problem.domain.result(node[0], a)

                    if newstate not in self.get_path_tuple(node):
                        cost = node[2] + self.problem.domain.cost(node[0], a)
                        depth = node[4] + 1
                        newnode = (newstate, nodeID, cost, self.problem.domain.heuristic(newstate, self.problem.goal), depth)
                        lnewnodes.append(len(self.all_nodes))
                        self.all_nodes.append(newnode)
                self.add_to_open(lnewnodes)
            return None
        
        elif self.optimize == 2:
            self.all_nodes[0] = (self.initial, None, 0, 0, 0)
            while (self.open_nodes != []):
                nodeID = self.open_nodes.pop(0)
                node = self.all_nodes[nodeID]
                

                if self.operations[4](node[0],self.goal):
                    self.solution = node
                    self.terminals = len(self.open_nodes) + 1
                    return self.get_path_tuple(node)


                lnewnodes = []
                self.non_terminals += 1

                for a in self.operations[0](node[0]):
                    newstate = self.operations[1](node[0], a)
                    if newstate not in self.get_path_tuple(node):
                        cost = node[2] + self.operations[2](node[0], a)
                        depth = node[4] + 1
                        newnode = (newstate, nodeID, cost, self.operations[3](newstate, self.problem[2]), depth)
                        lnewnodes.append(len(self.all_nodes))
                        self.all_nodes.append(newnode)
                self.add_to_open(lnewnodes)
            return None
        elif self.optimize == 4:
            self.all_nodes[0] = (self.initial, None, 0, 0, 0)
            while (self.open_nodes != []):
                nodeID = self.open_nodes.pop(0)
                node = self.all_nodes[nodeID]
                
                for i in self.open_nodes:
                    if node[0] == self.all_nodes[i][0]:
                        if node[2] > self.all_nodes[i][2] and self.all_nodes[i][3] <= node[3]:
                            self.open_nodes.remove(i)
                            break
                        
                if self.operations[4](node[0],self.goal):
                    self.solution = node
                    self.terminals = len(self.open_nodes) + 1
                    return self.get_path_tuple(node)


                lnewnodes = []
                self.non_terminals += 1

                for a in self.operations[0](node[0]):
                    newstate = self.operations[1](node[0], a)
                    if newstate not in self.get_path_tuple(node):
                        cost = node[2] + self.operations[2](node[0], a)
                        depth = node[4] + 1
                        newnode = (newstate, nodeID, cost, self.operations[3](newstate, self.problem[2]), depth)
                        lnewnodes.append(len(self.all_nodes))
                        self.all_nodes.append(newnode)
                self.add_to_open(lnewnodes)
            return None
        else:
            while(self.open_nodes != []):
                nodeID = self.open_nodes.pop(0)
                node = self.all_nodes[nodeID]
                
                if self.problem.goal_test(node.state):
                    self.solution = node
                    self.terminals = len(self.open_nodes) + 1
                    return self.get_path(node)
                
                lnewnodes = []
                self.non_terminals += 1
                
                for a in self.problem.domain.actions(node.state):
                    newstate = self.problem.domain.result(node.state,a)
                    
                    if newstate not in self.get_path(node):
                        if isinstance(node,MyNode):
                            cost = node.cost + self.problem.domain.cost(node.state,a)
                            depth = node.depth + 1
                        else:
                            cost = self.problem.domain.cost(node.state,a)
                            depth = 1
                        newnode = MyNode(newstate,nodeID,cost,self.problem.domain.heuristic(newstate,self.problem.goal),depth)
                        lnewnodes.append(len(self.all_nodes))
                        self.all_nodes.append(newnode)
                self.add_to_open(lnewnodes)
        return None

# If needed, auxiliary functions can be added




