/* Penguin.java provides a Penguin subclass of Bird.
 *  *
 *   * Begun by: Prof. Adams, for CS 214 at Calvin College.
 *    * Completed by:
 *     * Date:
 *      ******************************************************/

public class Kiwi extends WalkingBird {

	/* explicit constructor
	 *          * Receive: name, a String 
	 *                   * PostCond: myName == name.
	 *                            */


	public Kiwi(String name)
	{
		super(name);
	}



	/* A Penguin Call
	 *          * Return: a Penguin call.
	 *                   */

	public String call()
	{
		return "Hello Branden.";
	}


}

