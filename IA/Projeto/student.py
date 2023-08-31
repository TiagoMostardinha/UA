"""Example client."""
import asyncio
import getpass
import json
import os
from select import select

# Next 4 lines are not needed for AI agents, please remove them from your code!
import pygame
import websockets

from common import *
import time

pygame.init()
program_icon = pygame.image.load("data/icon2.png")
pygame.display.set_icon(program_icon)

"""All Methods needed for the agent."""

"""Guesses distance to goal bases on the number of cars blocking the goal and distance."""
async def blocking_and_distance_heuristic(state: str):
    grid = state.split(' ')[1]
    
    # CALCULATE ROW SIZE
    goal = calc_row_size(grid)
    
    # HEURISTIC
    goal_row = grid[grid.index('A') + 2 : goal[0]]
    vehicles = set(goal_row)-set ('o')
    
    if vehicles:
        return len(vehicles) + len(goal_row)
    return len(goal_row)
    
    
"""A* search."""
async def astar(start: str,h):
    print("THINKING...")
    timer = time.time()
    
    # ASTAR START
    open_set = set()
    open_set.add(start)
    
    came_from = {}
    
    g_score = {}
    g_score[start] = 0
    f_score = {}
    f_score[start] = await h(start)
    
    while open_set:
        current = min(f_score, key=lambda x:f_score[x])
        
        if Map(current).test_win():
            # HOW LONG ASTAR ALGORITHM TAKES
            print("\33[31mTIME:",time.time()-timer,"\33[0m")
            return await reconstruct_path(came_from, current)       # output: reconstruct_path -> (dict(came_from),movement->str)
        
        open_set.remove(current)
        
        neighbors = await generate_new_nodes(current,came_from)
        
        for neighbor in neighbors:
            tentative_g_score = g_score[current] # + 1
            
            if neighbor not in g_score or tentative_g_score < g_score[neighbor]:
                came_from[neighbor] = current
                g_score[neighbor] = tentative_g_score
                f_score[neighbor] = g_score[neighbor] + await h(neighbor)
            
                if neighbor not in open_set:
                    open_set.add(neighbor)
        del f_score[current]
    return False


"""Check if the vehicle is vertival or horizontal: (0 = horizontal, 1 = vertical)."""
def vehicle_type(current_node: str,piece: str):
    current_grid = current_node.split(' ')[1]
    
    # CALCULATE ROW SIZE
    goal = calc_row_size(current_grid)
    
    if piece in current_grid:
        if current_grid[current_grid.index(piece)+1] == piece:
            return 0
        if current_grid[current_grid.index(piece)+goal[1]] == piece:
            return 1
    raise MapException("Piece Unknown")     #output: 0 = horizontal / 1 = vertical


"""Check what is the size of the vehicle."""
def vehicle_size(current: str,piece:str):
    return current.split(' ')[1].count(piece)   # output: int


"""Reconstruct path from a dict."""
async def reconstruct_path(came_from: dict, current: str):
    total_path = [(current,"")]
    
    while current in came_from.keys():
        
        ch = [(came_from[current][i],current[i]) for i in range(len(current)) if current[i] != came_from[current][i]][0]
        current = came_from[current]
        
        if vehicle_type(current,ch[0] if ch[0] != "o" else ch[1]) == 0:
            if ch[0] != "o" and ch[1] == "o":           # ix[0] = piece / ix[1] = "o"
                total_path.append((current,ch[0]+"d"))
            elif ch[0] == "o" and ch[1] != "o":         # ix[0] = "o" / ix[1] = piece
                total_path.append((current,ch[1]+"a"))
        else:
            if ch[0] != "o" and ch[1] == "o":           # ix[0] = piece / ix[1] = "o"
                total_path.append((current,ch[0]+"s"))
            elif ch[0] == "o" and ch[1] != "o":         # ix[0] = "o" / ix[1] = piece
                total_path.append((current,ch[1]+"w"))
        
    return list(reversed(total_path))   # output: [(state,movements)]


"""Generate new nodes that are not in the path visited."""
async def generate_new_nodes(current:str,path_visited: dict):
    neighbors = []
    grid = current.split(' ')[1]
    pieces = set(grid) - set("ox")
    goal = calc_row_size(grid)
    
    # DO NODES FOR ALL PIECES
    for p in pieces:
        p_size = vehicle_size(current,p)
        
        if vehicle_type(current,p) == 0:    # HORIZONTAL
            try:    # MOVE RIGHT
                m = Map(current)
                m.move(p, Coordinates(1, 0))
                new_node = current[:current.index(p)] + "o" + p_size*p  + current[current.index(p)+p_size+1:]
                neighbors.append(new_node)
            except MapException:
                pass
            try:    # MOVE LEFT
                m = Map(current)
                m.move(p, Coordinates(-1, 0))
                new_node = current[:current.index(p)-1] + p*p_size + "o" + current[current.index(p)+p_size:]
                neighbors.append(new_node)
            except MapException:
                pass
        else:
            try:    # MOVE UP
                m = Map(current)
                m.move(p, Coordinates(0,-1))
                new_node = current[:current.index(p)-goal[1]] + p + current[current.index(p)-goal[1]+1:current.index(p)+goal[1]*(p_size-1)] + "o" + current[current.index(p)+goal[1]*(p_size-1)+1:]
                neighbors.append(new_node)
            except MapException:
                pass
            try:    # MOVE DOWN
                m = Map(current)
                m.move(p, Coordinates(0,1))
                new_node = current[:current.index(p)] + "o" + current[current.index(p)+1:current.index(p)+goal[1]*p_size] + p + current[current.index(p)+ goal[1]*p_size+1:]
                neighbors.append(new_node)
            except MapException:
                pass
            
    return neighbors    # output: dict(nodes)


"""Move the cursor to the desired piece."""
async def move_cursor(cursor:Coordinates,piece:Coordinates):
    distance = [(cursor.x- piece.x),(cursor.y - piece.y)]
    
    if distance[0] > 0:     # MOVE LEFT
        return "a"
    elif distance[0] < 0:   # MOVE RIGHT
        return "d"
    elif distance[1] > 0:   # MOVE UP
        return "w"
    elif distance[1] < 0:   # MOVE DOWN
        return "s"
    
    return ""
    
    
"""If in the future there are grids 7x7."""
def calc_row_size(current: str):
    grid_size = len(current)
    
    if grid_size == 36:
        return (18,6)
    elif grid_size == 64:
        return (40,8)
    elif grid_size == 16:
        return (12,4)   # output: (goal,row_size)
    else:
        aux  = int(math.sqrt(grid_size))
        return (aux*3,aux)

"""End of all Methods needed for the agent."""


async def agent_loop(server_address="localhost:8000", agent_name="student"):
    """Example client loop."""
    async with websockets.connect(f"ws://{server_address}/player") as websocket:

        # Receive information about static game properties
        await websocket.send(json.dumps({"cmd": "join", "name": agent_name}))

        last_level = ""
        
        while True:
            """Just to check how long the program takes to run."""
            try:
                """ { dimensions, level, grid, score, game_speed, cursor, select, map } """
                state = json.loads(await websocket.recv())  # receive game update, this must be called timely or your game will get out of sync with the server
                """ string -> 'level grid points' """
                state['map'] = Map(state['grid'])
                
                key = ""
                
                """New level new path."""
                if last_level != state['level']:
                    """Print the level."""
                    last_level = state['level']
                    print("\n\33[35mNew level",last_level,"\33[0m")
                    move_list = await astar(state['grid'],(blocking_and_distance_heuristic))
                    move = move_list.pop(0)[1]
                    next_move = False
                
                
                """Get the first item."""
                if len(move_list) > 0:
                    """Check if the move is valid."""
                    
                    if next_move:
                        next_move = False
                        move = move_list.pop(0)[1]
                    
                    try:
                        next_move_grid = move_list[0][0]
                    except IndexError:
                        next_move_grid = state['grid']
                    
                    
                    """Piece and cursor coordinates."""
                    try:
                        directions = {"a":Coordinates(-1,0),"d":Coordinates(1,0),"w":Coordinates(0,-1),"s":Coordinates(0,1)}
                        cursor = Coordinates(state.get("cursor")[0],state.get("cursor")[1])
                        cc_piece = state['map'].piece_coordinates(move[0])[0]
                        state['map'].move(move[0],directions[move[1]])
                    except MapException:                        
                        if state['grid'].index(move[0]) == next_move_grid.index(move[0]):
                            next_move = True
                            print("\033[33mMapException\033[34m == \033[0m")
                        else:
                            move_list.clear()
                            print("\033[33mMapException\033[34m\033[0m")
                    except IndexError:
                        move_list = await astar(state['grid'],(blocking_and_distance_heuristic))
                        next_move = True
                            
                else:
                    """If move_list is empty."""
                    move_list = await astar(state['grid'],(blocking_and_distance_heuristic))
                    next_move = True
                
                
                if cursor == cc_piece:
                    if state['selected'] == "":
                        key = " "
                    else:
                        if not next_move:
                            key = move[1]
                            next_move = True
                else:
                    if state['selected'] != "":
                        key = " "
                    else:
                        key = await move_cursor(cursor,cc_piece)
                

                
                # Next lines are only for the Human Agent, the key values are nonetheless the correct ones!
                
                await websocket.send(json.dumps({"cmd": "key", "key": key}))  # send key command to server - you must implement this send in the AI agent
            except websockets.exceptions.ConnectionClosedOK:
                print("Server has cleanly disconnected us")
                return

            # Next line is not needed for AI agent
            #pygame.display.flip()

# DO NOT CHANGE THE LINES BELLOW
# You can change the default values using the command line, example:
# $ NAME='arrumador' python3 client.py
loop = asyncio.get_event_loop()
SERVER = os.environ.get("SERVER", "localhost")
PORT = os.environ.get("PORT", "8000")
NAME = os.environ.get("NAME", getpass.getuser())
loop.run_until_complete(agent_loop(f"{SERVER}:{PORT}", NAME))
