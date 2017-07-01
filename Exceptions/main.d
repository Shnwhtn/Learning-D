import std.stdio;


//Class that inherets from exception
//Constructor takes two paramets string file and size_t line , defaults are __FILE__ and __LINE__

class customException:Exception
{
	this(string message,string file = __FILE__, size_t line = __LINE__, Throwable next = null)
	{
		super(message,file,line,next);
	}
}


int main(string[] argv)
{
    try
	{
		throw new customException("oh noes it failed");
	}
	catch(customException e)
	{
		writeln("caught ",e);
	}
	readln();
    return 0;
}
