Script started on 2024-04-15 13:21:47-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="109" LINES="46"]
]0;lvm5@maroon07: ~/214/projects/11/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/java[00m$ cat search.java 
/* search.java traverses through a list in Java's linked list structure
 * 
 * Completed By: Lily McAboy
 * Date: 4/15/2024
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;


public class search {

	public static void main(String [] args) {
		// define list1, list2, list3 here ...

		LinkedList<Integer> list1 = new LinkedList<Integer>();
		LinkedList<Integer> list2 = new LinkedList<Integer>();
		LinkedList<Integer> list3 = new LinkedList<Integer>();
		LinkedList<Integer> list4 = new LinkedList<Integer>();

		list1.add(99);    // 99, 88, 77, 66, 55
		list1.add(88);    // max is first
		list1.add(77);
		list1.add(66);
		list1.add(55);

		list2.add(55);    // 55, 66, 77, 88, 99
		list2.add(66);    // max is last
		list2.add(77);
		list2.add(88);
		list2.add(99);

		list3.add(55);    // 55, 77, 99, 88, 66
		list3.add(77);    // max is in the middle
		list3.add(99);
		list3.add(88);
		list3.add(66);

		list4.add(55);    // 55, 66, 77, 88
		list4.add(66);    // 99 is not in this list. 
		list4.add(77);
		list4.add(88);

		print(list1);
		print(list2);
		print(list3);
		print(list4);


		System.out.println("If -1 is printed, then the number does not exist in the list.");


		System.out.println("Finding 99 in list 1 at index: " + searchFor(list1, 99));
		System.out.println("Finding 99 in list 2 at index: " + searchFor(list2, 99));
		System.out.println("Finding 99 in list 3 at index: " + searchFor(list3, 99));
		System.out.println("Finding 99 in list 4 at index: " + searchFor(list4, 99));

	}

	/** print() displays a LinkedList on the console.
	 *
	 * @param: aList, a LinkedList<Integer>
	 * 
	 * Postcondition: the Integer values in aList
	 *                 have been displayed to System.out,
	 *                 separated by spaces.
	 */
	// replace this line with the definition of print().

	public static void print(LinkedList<Integer> aList)
	{
		Iterator<Integer> listIterator = aList.iterator();
		while (listIterator.hasNext()){
			System.out.print(listIterator.next() + " ");
		}
		System.out.print('\n');
	}


	public static Integer searchFor(LinkedList<Integer> aList, Integer myValue)
	{
		Iterator<Integer> listIterator = aList.iterator();
		Integer theIndex = 0;
		while (listIterator.hasNext()){
			Integer myNext = listIterator.next();
			if(myNext.equals(myValue)){
				return theIndex;
			}
			theIndex++;
		}
		return -1;
	}

}
]0;lvm5@maroon07: ~/214/projects/11/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/java[00m$ java search.java
99 88 77 66 55 
55 66 77 88 99 
55 77 99 88 66 
55 66 77 88 
If -1 is printed, then the number does not exist in the list.
Finding 99 in list 1 at index: 0
Finding 99 in list 2 at index: 4
Finding 99 in list 3 at index: 2
Finding 99 in list 4 at index: -1
]0;lvm5@maroon07: ~/214/projects/11/java[01;32mlvm5@maroon07[00m:[01;34m~/214/projects/11/java[00m$ exit

Script done on 2024-04-15 13:22:02-04:00 [COMMAND_EXIT_CODE="0"]
