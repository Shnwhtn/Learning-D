import std.stdio;


// Function to loop through all the elements in the array and return total
int sum(in int[] data){
	int total = 0;
	foreach(item;data)
		total += item;
	return total;
}



int main(string[] argv)
{

	//Declaring an array
	int[] array;

	//Append Data to the array
	array ~= 1;
	array ~= [2,3];

	// Write out
	writeln("Sum of the array ",array," is ", sum(array));
	readln();

    return 0;
}
