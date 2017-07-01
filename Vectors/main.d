import std.stdio;
import std.math;

//Declare a struct

struct Vector
{
	float magnitude;
	float direction;


	// method to create a vector from an x,y coordinate
	static Vector fromPoint (float[2] point)
	{
		Vector v;
		float x = point[0];
		float y = point[1];
		v.magnitude = sqrt(x ^^ 2 + y ^^ 2);
		v.direction = atan2(y,x);
		return v;
	}

//Converts to an x,y point, returns in an array

	float[2] toPoint() const
	{
		float x = cos(direction)*magnitude;
		float y = sin(direction)*magnitude;
		return [x,y];
	}

//Addition operator
	Vector opBinary(string op: "+")(Vector rhs)const
	{
		auto point = toPoint(),point2 = rhs.toPoint();
		point[0] += point2[0];
		point[1] += point2[1];

		return Vector.fromPoint(point);
	}
}

int main(string[] argv)
{
	// Set the origin
    auto origin = Vector(0,0);
	// Set the result
	auto result = origin + Vector(1.0,PI);
	//Outputs
	writeln("Vector Result : ",result);
	writeln("Point result : ",result.toPoint());
	readln();

    return 0;
}
