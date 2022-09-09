
public class Room {
	private Point topRight,bottomLeft;
	private String roomType;
	
	public Room(Point topRight, Point bottomLeft,String roomType) {
		this.topRight = topRight;
		this.bottomLeft = bottomLeft;
		this.roomType = roomType;
	}
	
	public Point geomCenter() {
		return new Point((topRight.x() + bottomLeft.x())/2, (topRight.y() + bottomLeft.y())/2);
	}
	
	public double area() {
		return (topRight.x() - bottomLeft.x()) * (topRight.y() - bottomLeft.y());
	}
}
