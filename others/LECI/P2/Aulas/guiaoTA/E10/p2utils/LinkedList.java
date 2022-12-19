package p2utils;

public class LinkedList<E> {

  private Node<E> first = null;
  private Node<E> last = null;
  private int size = 0;

  /** {@code LinkedList} constructor, empty so far.
   */
  public LinkedList() { }

  /** Returns the number of elements in the list.
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /** Returns the first element in the list.
   * @return  First element in the list
   */
  public E first() {
    assert !isEmpty(): "empty!";

    return first.elem;
  }

  /** Returns the last element in the list.
   * @return Last element in the list
   */
  public E last() {
    assert !isEmpty(): "empty!";

    return last.elem;
  }

  /** Adds the given element to the start of the list.
   * @param e the element to add
   */
  public void addFirst(E e) {
    first = new Node<>(e, first);
    if (isEmpty())
      last = first;
    size++;

    assert !isEmpty(): "empty!";
    assert first().equals(e) : "wrong element";
  }

  /** Adds the given element to the end of the list.
   * @param e the element to add
   */
  public void addLast(E e) {
    Node<E> newest = new Node<>(e);
    if (isEmpty())
      first = newest;
    else
      last.next = newest;
    last = newest;
    size++;

    assert !isEmpty(): "empty!";
    assert last().equals(e) : "wrong element";
  }

  /** Removes the first element in the list.
   */
  public void removeFirst() {
    assert !isEmpty(): "empty!";
    first = first.next;
    size--;
    if (isEmpty())
      last = null;
  }

  /** Removes all elements.
   */
  public void clear() {
    first = last = null;
    size = 0;
  }

  /** Returns a string representing the list contents.
   * @return A string representing the list contents
   */
  public String toString() {
    String sep = "";
    String s = "";
    for (Node<E> n = first; n != null; n = n.next) {
      s += sep + n.elem;
      sep = ", ";
    }
    return "[" + s + "]";
  }

  // funcoes adicionais pedidas no guião...
  //count
  public int count(E e) {
	  return count(first,e,0);
  }
  private int count(Node n,E e,int c) {
	  if(n != null) {
		  if(e.equals(n.elem)) c++;
		  return count(n.next,e,c);
	  }
	  return c;
  }
  /**
  public int count(E e) {
	  int c = 0;
	  for(Node<E> n = first; n != null; n = n.next) {
		  if(e.equals(n.elem)) {
			  c++;
		  }
	  }
	  return c;
	  
  }**/
 
  
  //indexOf
  public int indexOf(E e) {
	  return indexOf(first,e,0);
  }
  private int indexOf(Node n,E e,int c) {
	  if(n != null){
		  if(e.equals(n.elem)) return c;
		  c++;
		  return indexOf(n.next,e,c);
	  }
	  return -1;
  }
  /**
  public int indexOf(E e) {
	  int i = 0;
	  for(Node<E> n = first; n != null; n = n.next) {
		  if(e.equals(n.elem)) return i;
		  i++;
	  }
	  return -1;
  }**/
  
  //cloneReplace
  public LinkedList<E> cloneReplace(E e,E y){
	  LinkedList<E> aux = new LinkedList<E>();
	  return cloneReplace(first,e,y,aux);
  }
  private LinkedList<E> cloneReplace(Node<E> n,E e,E y,LinkedList<E> aux){
	  if(n != null) {
		  if(e.equals(n.elem)) aux.addLast(y);
		  else aux.addLast(n.elem);
		  return cloneReplace(n.next,e,y,aux);
	  }
	  return aux;
  }
  /**
  public LinkedList<E> cloneReplace(E e,E y) {
	  LinkedList<E> aux = new LinkedList<E>();
	  for(Node<E>n = first; n != null; n = n.next) {
		  if(e.equals(n.elem)) aux.addLast(y);
		  else aux.addLast(n.elem);
	  }
	  return aux;
  }**/
  
  //cloneSublist
  public LinkedList<E> cloneSublist(int start,int end){
	  assert (start >= 0 && end >= 0 && end > start) : "start or end makes no sense";
	  LinkedList<E> aux = new LinkedList<E>();
	  return cloneSublist(start,end,first,aux,0);
  }
  private LinkedList<E> cloneSublist(int start,int end,Node<E> n,LinkedList<E> aux,int c){
	  if(n != null) {
		  if(c >= start && c < end) aux.addLast(n.elem);
		  c++;
		  return cloneSublist(start,end,n.next,aux,c);
	  }
	  return aux;
  }
  /**
   	public LinkedList<E> cloneSublist(int start, int end){
	Node<E> n = first;
	LinkedList<E> copia = new LinkedList<E>();
	int posicao = 0;
	while (n.next != null) {
		if(posicao >= start && posicao < end){
			copia.addLast(n.elem);
		}   
		n = n.next;
		posicao++;	
		}
	return copia;
	}**/
  
  //cloneExceptSublist
  public LinkedList<E> cloneExceptSublist(int start, int end){
	  assert (start >= 0 && end >= 0 && end > start) : "start or end makes no sense";
	  LinkedList<E> aux = new LinkedList<E>();
	  return cloneExceptSublist(start,end,0,first,aux);
  }
  private LinkedList<E> cloneExceptSublist(int start, int end,int c,Node<E> n, LinkedList<E> aux){
	  if(n != null) {
		  if(c < start || c > end) aux.addLast(n.elem);
		  c++;
		  return cloneExceptSublist(start,end,c,n.next,aux);
	  }
	  return aux;
  }
  
  /**
   public LinkedList<E> cloneExceptSublist(int start, int end){
	Node<E> n = first;
	LinkedList<E> copia = new LinkedList<E>();
	int posicao = 0;
	while (n.next != null) {
		if(posicao < start || posicao > end){
			copia.addLast(n.elem);
		}   
		n = n.next;
		posicao++;	
		}
	return copia;
	}**/
  
  //removeSublist
  public void removeSublist(int start,int end){
	  Node<E> be = removeSublist(start - 1,0,first);
	  Node<E> af = removeSublist(end-1,0,first);
	  be.next = af;
	  size = size -(end-start);
  }
  private Node<E> removeSublist(int esc,int c,Node<E> n){
	  if(n != null) {
		  if(c == esc) return n;
		  c++;
		  return removeSublist(esc,c,n.next);
	  }
	  return null;
  }
  
}

