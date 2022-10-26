import math
import pygame
from queue import PriorityQueue

def h(p1, p2):       # 2 points (x,y)
    x1, y1 = p1
    x2, y2 = p2
    return abs(x1 - x2) + abs(y1 - y2)

def algorithm(draw,grid,start,end):
    count = 0
    open_set = PriorityQueue()
    open_set.put((0, count, start))                                 # First node will have an Fn of 0 // count it will be useful when we need to break ties, when 2 nodes have the same Fn, we will put the one with the lower count
    came_from = {}                                                  # Tell us from which node, the current node, came from
    g_score = {node: float("inf") for row in grid for node in row}  # Our grid, in the beginning, all nodes will have Fn = infinity 
    g_score [start] = 0
    f_score = {node: float("inf") for row in grid for node in row}
    f_score[start] = h(start.get_pos(), end.get_pos())                
    
    open_set_hash = {start}                                         # it will keep track the nodes in the open set
    
    while not open_set.empty():
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                
        current = open_set.get()[2]
        open_set_hash.remove(current)                               # to certificate that we don't have duplicate nodes
        
        if current == end:
            return True                                                    # make path
        
        for neighbor in current.neighbors:
            temp_g_score = g_score[current] + 1
            
            if temp_g_score < g_score[neighbor]:
                came_from[neighbor] = current
                g_score[neighbor] = temp_g_score
                f_score[neighbor] = temp_g_score + h(neighbor.get_pos(),end.get_pos())
                
                if neighbor not in open_set_hash:
                    count += 1
                    open_set.put((f_score[neighbor],count,neighbor))
                    open_set_hash.add(neighbor)
                    neighbor.make_open()
                    
                    
                    
        draw()
        
        if current != start:
            current.make_closed()
            
        return False