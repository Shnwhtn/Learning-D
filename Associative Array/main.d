import std.stdio, std.string;

int main(string[] argv)
{

	// Declare an array
	string[string] replacements = ["test" : "passed","text":"replaced"];
	replacements["foo"] = "bar";
	//if test written, then change to passed
	assert(replacements["test"] == "passed");
	// for each input in the program
	foreach(line;stdin.byLine()){
		// cut off whitespace
		line = line.strip();
		// if result is yes then write out the replacement then remove it
		if(auto replacement = line in replacements){
			writeln(line, " =>", *replacement);
			replacements.remove(line.idup);
		}else
		{
			// if false, then add to the map
			writeln(line);
			replacements[line.idup] = "already inserted";
		}
	}
	foreach(line,replacement;replacements)
	{
		writeln("mapping ",line, " => ",replacement);
	}
		


    readln();
    return 0;
}
