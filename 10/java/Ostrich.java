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


