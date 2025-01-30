Script started on 2024-04-09 20:27:15-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="179" LINES="56"]
]0;lvm5@gold12: ~/214/projects/10/java[01;32mlvm5@gold12[00m:[01;34m~/214/projects/10/java[00m$ cat Birds.java C Bird.java Duck.java Goose.java Owl.java W FlyingBird.java Penguin.java Ostrich.java th  Kiwi.java WalkingBird.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by:
 * Date:
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();
	
      Penguin bird5 = new Penguin("Ricardo");
      bird5.print();

      Ostrich bird6 = new Ostrich("Amanda");
      bird6.print();

      Kiwi bird7 = new Kiwi("Fruit");
      bird7.print();

      System.out.println();
    }
}

/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Lily McAboy
 * Date: 4/5/2024
 ******************************************************/

import java.io.*;

abstract public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */

	public Bird()
	{
		myName = "";
	}


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

	public Bird(String name)
	{
		myName = name;
	}


 /* Name accessor
  * Return: myName.
  */

	public String getName()
	{
		return myName;
	}


 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */

	public String call()
	{
		return "Squawkk!!!";
	}


	/*Abstract method for movement*/

	public abstract String movement();


 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */

	public void print()
	{
		System.out.println(getName() + ' ' + getClass().getName() + " just " + movement() + " and says " + call());
	}



  private String myName;
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Duck extends FlyingBird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */

	public Duck(String name)
	{
		super(name);
	}


	/* A Duck's Call
	 * Return: a duck-call ("Quack!").
	 */

	public String call()
	{
		return "Quack!";
	}

}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Goose extends FlyingBird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */

	public Goose(String name)
	{
		super(name);
	}



	/* A Goose's Call
	 * Return: a goose-call ("Honk!").
	 */

	public String call()
	{
		return "Honkkkkk!";
	}

} 

/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Owl extends FlyingBird {

	/* explicit constructor
	 * Receive: name, a String 
	 * PostCond: myName == name.
	 */

	public Owl(String name)
	{
		super(name);
	}



	/* An Owl's Call
	 * Return: an owl-call ("Whoo-hoo!").
	 */

	public String call()
	{
		return "Whoo-hoo!";
	}

} 

/*Flying bird class
 * Name: Lily McAboy
 * Date: 4/9/2024
 */


import java.io.*;

public class FlyingBird extends Bird
{
	public FlyingBird(String name)
	{
		super(name);
	}

	public String movement()
	{
		return "flew past";
	}

}

/* Penguin.java provides a Penguin subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Penguin extends WalkingBird {

        /* explicit constructor
         * Receive: name, a String 
         * PostCond: myName == name.
         */


        public Penguin(String name)
        {
                super(name);
        }



        /* A Penguin Call
         * Return: a Penguin call.
         */

        public String call()
        {
                return "Huh-huh-huh-huuuuh";
        }


}

                                                                                                                                            
/* Ostrich.java provides a Ostrich subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by:
 * Date:
 ******************************************************/

public class Ostrich extends WalkingBird {

        /* explicit constructor
         * Receive: name, a String 
         * PostCond: myName == name.
         */


        public Ostrich(String name)
        {
                super(name);
        }



        /* An Ostrich Call
         * Return: an Ostrich call.
         */

        public String call()
        {
                return "Snork";
        }


}


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

/*Walking bird class
 * Name: Lily McAboy
 * Date: 4/9/2024
 */


import java.io.*;

public class WalkingBird extends Bird
{
        public WalkingBird(String name)
        {       
                super(name);
        }       
        
        public String movement()
        {       
                return "walks past";
        }       
        
}  
]0;lvm5@gold12: ~/214/projects/10/java[01;32mlvm5@gold12[00m:[01;34m~/214/projects/10/java[00m$ [Kjavac-  -deprecation Birds.java
]0;lvm5@gold12: ~/214/projects/10/java[01;32mlvm5@gold12[00m:[01;34m~/214/projects/10/java[00m$ java Birds

Welcome to the Bird Park!

Donald Duck just flew past and says Quack!
Mother Goose Goose just flew past and says Honkkkkk!
Woodsey Owl just flew past and says Whoo-hoo!
Ricardo Penguin just walks past and says Huh-huh-huh-huuuuh
Amanda Ostrich just walks past and says Snork
Fruit Kiwi just walks past and says Hello Branden.

]0;lvm5@gold12: ~/214/projects/10/java[01;32mlvm5@gold12[00m:[01;34m~/214/projects/10/java[00m$ exit

Script done on 2024-04-09 20:28:17-04:00 [COMMAND_EXIT_CODE="0"]
