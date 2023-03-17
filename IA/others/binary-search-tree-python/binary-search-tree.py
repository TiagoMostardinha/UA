# 1st Part

class BinarySearchTree:
    def __init__(self,data):
        self.data = data
        self.left = None
        self.right = None
    
    def add_child(self,data):                           # ADD NODE CHILD
        if data == self.data:                           # same value as node value
            return
        
        if data < self.data:                            # add data in left subtree
            if self.left:                               # check if left is free
                self.left.add_child(data)               # left exists > it will recursively add to the children of left
            else:                                       #
                self.left = BinarySearchTree(data)      # left doesn't exist > it will add a new node with the data on the left of node parent
                
        else:
            if self.right:                              # do the same thing as left,
                self.right.add_child(data)              # but for node children that 
            else:                                       # will be placed on the right
                self.right = BinarySearchTree(data)     #
        
    def in_order_traversal(self):
        elements = []
        
        if self.left:                                   # visit left tree                     
            elements += self.left.in_order_traversal()  #
        
        elements.append(self.data)                      # visits base node
        
        if self.right:                                  # visit right tree                     
            elements += self.right.in_order_traversal() #

        return elements
    
    def pre_order_traversal(self):
        elements = []
        
        elements.append(self.data)                      # visits root node
        
        if self.left:                                   # visit left tree                     
            elements += self.left.pre_order_traversal() #
        
        if self.right:                                  # visit right tree                     
            elements += self.right.pre_order_traversal()#

        return elements
    
    def post_order_traversal(self):
        elements = []
        
        if self.left:                                   # visit left tree                     
            elements += self.left.post_order_traversal()  
        
        if self.right:                                  # visit right tree                     
            elements += self.right.post_order_traversal() 
        
        elements.append(self.data)                      # visits root node

        return elements
    
    def search(self,val):
        if self.data == val:                            # val found and it's in this node
            return True
        
        if val < self.data:                             # val might be in left subtree
            if self.left:                               # there is a node child on the left
                self.left.search(val)                   # and it will search the val there
            else:
                return False
            
        if val > self.data:                             # val might be in left subtree
            if self.right:                              # there is a node child on the left  
                return self.right.search(val)           # there is a node child on the left
            else:
                return False
    
    def find_max(self):
        if not self.right:                              # the highest value will be placed on
            return self.data                            # the right corner of the binary tree
        return self.right.find_max()             
            
    
    def find_min(self):                             
        if not self.left:                               # the highest value will be placed on
            return self.data                            # the left corner of the binary tree
        return self.left.find_min()
            
        
    def calculate_sum(self):
        left_sum = self.left.calculate_sum() if self.left else 0
        right_sum = self.right.calculate_sum() if self.right else 0
        return self.data + left_sum + right_sum

# 2nd Part

    def delete(self,val):
        if val < self.data:
            if self.left:
                self.left = self.left.delete(val)
        elif val > self.data:
            if self.right:
                self.right = self.right.delete(val)
        else:
            if not self.left and not self.right:
                return None
            if not self.left:
                return self.right
            if not self.right:
                return self.right
            
            min_val = self.right.find_min()
            self.data = min_val
            self.right = self.right.delete(min_val)
            
        return self
        
            
    
def build_tree(elements):
    root = BinarySearchTree(elements[0])
    
    for i in range(1,len(elements)):
        root.add_child(elements[i])
    
    return root
    
    

if __name__ == "__main__":
    numbers = [15,12,7,14,27,20,23,88 ]
    numbers_tree = build_tree(numbers)
    
    # 1. Order 
    print(numbers_tree.in_order_traversal())
    print(numbers_tree.pre_order_traversal())
    print(numbers_tree.post_order_traversal())
    
    
    # 2. Search
    print("20? " + str(numbers_tree.search(20)))
    print("21? " + str(numbers_tree.search(21)))
    
    # 3. Max,Min and Sum
    print("max: ", numbers_tree.find_max())
    print("min: ",numbers_tree.find_min())
    print("sum: ",numbers_tree.calculate_sum())
    
    # 4. delete
    numbers_tree.delete(20)
    print("After deleting 20", numbers_tree.in_order_traversal())
    numbers_tree.delete(9)
    print("After deleting 9", numbers_tree.in_order_traversal())
    