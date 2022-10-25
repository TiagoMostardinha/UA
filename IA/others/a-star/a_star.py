import math
import pygame
from queue import PriorityQueue
from game import Node


def h(p1,p2):       # 2 points (x,y)
    x1, y1 = p1
    x2, y2 = p2
    return abs(x1 - x2) + abs(y1 - y2)

def algorithm(draw,grid,start,end):
    count = 0
    open_set = PriorityQueue
    open_set.put((0, count, start))                                 # First node will have an Fn of 0 // count it will be useful when we need to break ties, when 2 nodes have the same Fn, we will put the one with the lower count
    came_from = {}                                                  # Tell us from which node, the current node, came from
    g_score = {node: float("inf") for row in grid for spot in row}  # Our grid, in the beginning, all nodes will have Fn = infinity 
    g_score [start] = 0
    f_score = {node: float("inf") for row in grid for spot in row}
    f_score[start] = h(start.get_pos, end.get_pos())
    
    open_set_hash = {start}
    
    while not open_set.empty():
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                
        
                
            