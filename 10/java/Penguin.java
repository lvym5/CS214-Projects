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

                                                                                                                                            
