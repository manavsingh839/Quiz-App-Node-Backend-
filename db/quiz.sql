-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 09:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `language`, `type`) VALUES
(1, 'All keywords in C are in ____________', 'LowerCase letters', 'Uppercase letters', 'CamelCase letters', 'None of the mentioned', 'LowerCase letters', 'C', 'theory'),
(2, '#include <stdio.h>\r\n    int main()\r\n     {\r\n        int y = 10000;\r\n        int y = 34;\r\n        printf(\"Hello World! %d\\n\", y);\r\n        return 0;\r\n     }', 'Compile time error', 'Hello World! 34', 'Hello World! 1000', 'Hello World!followed by a junk value', 'Compile time error', 'C', 'program'),
(3, 'In C language, FILE is of which data type?', 'int', 'char *', 'struct', 'None of the mentioned', 'struct', 'C', 'theory'),
(4, 'What is meant by ‘a’ in the following C operation?\r\n\r\nfp = fopen(\"Random.txt\", \"a\");', 'Attach', 'Append', 'Apprehend', 'Add', 'Append', 'C', 'program'),
(5, 'What will be the output of the following \r\nC code?\r\n\r\n    #include  <stdio.h>\r\n    int main()\r\n    {\r\n       signed char chr;\r\n       chr = 128;\r\n       printf(\"%d\\n\", chr);\r\n       return 0;\r\n    }', '128', '-128', 'Depends on the compiler', 'None of the mentioned', '-128', 'C', 'program'),
(6, 'What will be the final value of x in the following C code?\r\n\r\n    #include <stdio.h>\r\n    void main()\r\n    {\r\n        int x = 5 * 9 / 3 + 9;\r\n    }', '3.75', 'Depends on compiler', '24', '3', '24', 'C ', 'program'),
(7, 'Which option should be selected to work the following C expression?\r\n\r\nstring p = \"HELLO\";', 'typedef char [] string;', 'typedef char *string;', 'typedef char [] string;and typedef char *string; ', 'Such expression cannot be generated in C', 'typedef char *string;', 'C', 'theory'),
(8, 'What is the output of the following C code?\r\n#include <stdio.h>\r\n    int main()\r\n    {\r\n        short int i = 20;\r\n        char c = 97;\r\n        printf(\"%d, %d, %d\\n\", sizeof(i), \r\n        sizeof(c), sizeof(c + i));\r\n        return 0;\r\n    }', '2,1,2', '2,1,1', '2,1,4', '2,2,8', '2,1,4', 'C', 'program'),
(9, 'Which of the following is NOT possible with any 2 operators in C?\r\n', 'a)Different precedence, same associativity\r\n', 'b) Different precedence, different associativity', 'c) Same precedence, different associativity', 'd) All of the mentioned', 'c)Same precedence, different associativity', 'C', 'theory'),
(10, 'Functions in C Language are always ________\r\n', 'a) Internal', 'b) External', 'c) Both Internal and External', 'd) External and Internal are not valid terms for functions', 'b) External', 'C', 'theory'),
(11, '#include <stdio.h>\r\n    int main()\r\n    {\r\n        int i = 0;\r\n        while (i < 3)\r\n            i++;\r\n        printf(\"In while loop\\n\");\r\n    }', '2', '3', '4', '1', '4', 'C', 'program'),
(12, 'Which of the following is not possible statically in C language?\r\na) Jagged Array\r\nb) Rectangular Array\r\nc) Cuboidal Array\r\nd) Multidimensional Array', 'Jagged Array', 'Rectangular Array', 'Cuboidal Array', 'Multidimensional Array', 'Jagged Array', 'C', 'theory'),
(13, ' What are the elements present in the array of the following C code?\r\n\r\nint array[5] = {5};\r\n', '5,5,5,5,5', '5,0,0,0,0', '5,(garbage),(garbage),(garbage),(garbage)', '(garbage),(garbage),(garbage),(garbage),5', '5,0,0,0,0', 'C', 'program'),
(14, 'What is the meaning of the following C statement?\r\n\r\n printf(“%10s”, state);', '10 spaces before the string state is printed', 'Print empty spaces if the string state is less than 10 characters', 'Print the last 10 characters of the string', 'None of the mentioned', 'Print empty spaces if the string state is less than 10 characters', 'C', 'program'),
(15, 'What is the problem in the following C declarations?\r\n\r\n   int func(int);\r\n   double func(int);\r\n   int func(float);', 'A function with same name cannot have different signatures', 'A function with same name cannot have different return types', 'A function with same name cannot have different number of parameters', 'All of the mentioned', 'All of the mentioned', 'C', 'program'),
(16, 'What will be the data type returned for the following C function?\r\n\r\n    #include <stdio.h>\r\n    int func()\r\n    {\r\n        return (double)(char)5.0;\r\n    }', 'char', 'int', 'double', 'multiple type-casting in return is illegal', 'int', 'C', 'program'),
(17, 'What will be the output of the following C function?\r\n    #include <stdio.h>\r\n    enum birds {SPARROW, PEACOCK,PARROT};\r\n    enum animals {TIGER = 8, LION, RABBIT, ZEBRA};\r\n    int main()\r\n    {\r\n        enum birds m = TIGER;\r\n        int k;\r\n        k = m;\r\n        printf(\"%d\\n\", k);\r\n        return 0;\r\n    }\r\n', '0\r\n', 'Compile time error', '1', '8', '8', 'C', 'program'),
(18, 'Which of the following is not an operator in C?', ',', 'sizeof()', '~', 'None of the mentioned', 'None of the mentioned', 'C', 'theory'),
(19, 'Property which allows to produce different executable for different platforms in C is called?', 'File inclusion', 'Selective inclusion', 'Conditional compilation', 'Recursive macros', 'Conditional compilation', 'C', 'theory'),
(20, 'What is #include <stdio.h>?', 'Preprocessor directive', 'Inclusion directive', 'File inclusion directive', 'None of the mentioned', 'Preprocessor directive', 'C', 'theory'),
(21, 'Which of the following are C preprocessors?', '#ifdef', '#define', '#endif', 'all of the mentioned', 'all of the mentioned', 'C', 'theory'),
(22, 'Which of following is not accepted in C?', 'static a = 10; //static as', 'static int func (int); //parameter as static', 'static static int a; //a static variable prefixed with static', 'all of the mentioned', 'static static int a; //a static variable prefixed with static', 'C', 'theory'),
(23, 'Where in C the order of precedence of operators do not exist?', 'Within conditional statements, if, else', 'Within while, do-while', 'Within a macro definition', 'None of the mentioned', 'None of the mentioned', 'C', 'theory'),
(24, 'What is the result of logical or relational expression in C?', 'True or False', '0 or 1', '0 if an expression is false and any positive number if an expression is true', 'None of the mentioned', '0 or 1', 'C', 'theory'),
(25, 'What will happen if the following C code is executed?\r\n\r\n    #include <stdio.h>\r\n    int main()\r\n    {\r\n        int main = 3;\r\n        printf(\"%d\", main);\r\n        return 0;\r\n    }', 'It will cause a compile-time error', 'It will cause a run-time error', 'It will run without any error and prints 3', 'It will experience infinite looping\r\n', 'It will run without any error and prints 3', 'C', 'program'),
(26, ' Which of the following typecasting is accepted by C language?', 'Widening conversions', 'Narrowing conversions', 'Widening & Narrowing conversions', 'None of the mentioned', 'Widening & Narrowing conversions', 'C', 'theory'),
(27, 'What is short int in C programming?', 'The basic data type of C', 'Qualifier', 'Short is the qualifier and int is the basic data type', 'All of the mentioned', 'Short is the qualifier and int is the basic data type', 'C', 'theory'),
(28, 'What is the output of the following C code?\r\n\r\n#include <stdio.h>\r\n    int main()\r\n    {\r\n        char *str = \"hello world\";\r\n        char strc[] = \"good morning india\\n\";\r\n        strcpy(strc, str);\r\n        printf(\"%s\\n\", strc);\r\n        return 0;\r\n    }\r\n', 'hello world', 'hello world India', 'Compile time error', 'Undefined behaviour', 'hello world', 'C', 'program'),
(29, 'What will be the output of the following C code?\r\n\r\n    #include <stdio.h>\r\n    int main()\r\n    {\r\n        char *str = \"hello world\";\r\n        char strary[] = \"hello world\";\r\n        printf(\"%d %d\\n\", sizeof(str), sizeof(strary));\r\n        return 0;\r\n    }', '11 11\r\n', '12 12', '4 12', '4 11', '4 12', 'C', 'program'),
(30, 'Which directory the compiler first looks for the file when using #include?\r\na) Current directory where program is saved\r\nb) C:COMPILERINCLUDE\r\nc) S:SOURCEHEADERS\r\nd) Both C:COMPILERINCLUDE and S:SOURCEHEADERS simultaneously', 'Current directory where program is saved', 'C:COMPILERINCLUDE', 'S:SOURCEHEADERS', 'Both C:COMPILERINCLUDE and S:SOURCEHEADERS simultaneously', 'C:COMPILERINCLUDE', 'C', 'theory'),
(31, 'Which of the following is a correct identifier in C++?', 'VAR_1234', '$var_name', '7VARNAME', '7var_name', 'VAR_1234', 'Cpp', 'theory'),
(32, 'Which of the following approach is used by C++?\r\na) Left-right\r\nb) Right-left\r\nc) Bottom-up\r\nd) Top-down', 'Left-right', 'Right-left', 'Bottom-up', 'Top-down', 'Bottom-up', 'Cpp', 'theory'),
(33, 'Which of the following is not a type of Constructor in C++?', 'Default constructor', 'Parameterized constructor', 'Copy constructor', 'Friend constructor', 'Friend constructor', 'Cpp', 'theory'),
(34, 'What is virtual inheritance in C++?', 'C++ technique to enhance multiple inheritance', 'C++ technique to ensure that a private member of the base class can be accessed somehow\r\n', 'C++ technique to avoid multiple inheritances of classes', 'C++ technique to avoid multiple copies of the base class into children/derived class', 'C++ technique to avoid multiple copies of the base class into children/derived class', 'Cpp', 'theory'),
(35, 'What will be the output of the following C++ code?\r\n\r\n#include <iostream> \r\n#include <string>\r\nusing namespace std; \r\nint main(int argc, char const *argv[])\r\n{\r\n	char s1[6] = \"Hello\";\r\n	char s2[6] = \"World\";\r\n	char s3[12] = s1 + \" \" + s2;\r\n	cout<<s3;\r\n	return 0;\r\n}', 'Hello\r\n', 'World', 'Error', 'Hello World', 'Error', 'Cpp', 'program'),
(36, ' What is the difference between delete and delete[] in C++?', 'delete is syntactically correct but delete[] is wrong and hence will give an error if used in any case', 'delete is used to delete normal objects whereas delete[] is used to pointer objects', 'delete is a keyword whereas delete[] is an identifier', 'delete is used to delete single object whereas delete[] is used to multiple(array/pointer of) objects', 'delete is used to delete single object whereas delete[] is used to multiple(array/pointer of) objects', 'Cpp', 'theory'),
(37, 'Which of the following is correct about this pointer in C++?\r\na) this pointer is passed as a hidden argument in all static variables of a class\r\nb) this pointer is passed as a hidden argument in all the functions of a class\r\nc) this pointer is passed as a hidden argument in all non-static functions of a class\r\nd) this pointer is passed as a hidden argument in all static functions of a class', 'this pointer is passed as a hidden argument in all static variables of a class', 'this pointer is passed as a hidden argument in all the functions of a class', 'this pointer is passed as a hidden argument in all non-static functions of a class', 'this pointer is passed as a hidden argument in all static functions of a class', 'this pointer is passed as a hidden argument in all non-static functions of a class', 'Cpp', 'theory'),
(38, ' What is the value of p in the following C++ code snippet?\r\n\r\n    #include <iostream>\r\n    using namespace std;\r\n    int main()\r\n    {\r\n        int p;\r\n        bool a = true;\r\n        bool b = false;\r\n        int x = 10;\r\n        int y = 5;\r\n        p = ((x | y) + (a + b));\r\n        cout << p;\r\n        return 0;\r\n    }', '12', '0', '2', '16', '16', 'Cpp', 'program'),
(39, 'Which of the following correctly declares an array in C++?', 'array{10};', 'array array[10];', 'int array;', 'int array[10];', 'int array[10];', 'Cpp', 'theory'),
(40, 'What is the use of the indentation in c++?', 'distinguishes between comments and inner data', 'distinguishes between comments and outer data', 'distinguishes between comments and code', 'distinguishes between every line in a code ', 'distinguishes between comments and code', 'Cpp', 'theory'),
(41, 'All the variables of class should be ideally declared as?', 'private', 'public', 'protected', 'default', 'private', 'java', 'theory'),
(42, 'How can a protected modifier be accessed?', 'accessible only within the class', 'accessible only within package', 'accessible within package and outside the package but through inheritance only', 'accessible by all', 'accessible within package and outside the package but through inheritance only', 'Java', 'theory'),
(43, 'All the variables of interface should be?\r\n', 'default and final', 'default and static', 'public, static and final', 'protect, static and final', 'public, static and final', 'java', 'theory'),
(44, 'How many copies of static and class variables are created when 10 objects are created of a class?', '1,10', '10,10', '10,1', '1,1\r\n', '1,10', 'java', 'theory'),
(46, 'What will be the error in the following Java code?\r\n    byte b = 50;\r\n    b = b * 50;', 'b cannot contain value 50', 'b cannot contain value 100, limited by its range', 'No error in this code', '* operator has converted b * 50 into int, which can not be converted to byte without casting', '* operator has converted b * 50 into int, which can not be converted to byte without casting', 'java', 'program'),
(47, 'What is Truncation in Java?', 'Floating-point value assigned to a Floating type', 'Floating-point value assigned to an integer type', 'Integer value assigned to floating type', 'Integer value assigned to floating type', 'Floating-point value assigned to an integer type', 'java', 'theory'),
(48, 'What will be the output of the following Java program?\r\n    class Output \r\n    {\r\n        public static void main(String args[])\r\n        {\r\n            int arr[] = {1, 2, 3, 4, 5};\r\n            for ( int i = 0; i < arr.length - 2; ++i)\r\n                System.out.println(arr[i] + \" \");\r\n        } \r\n    }\r\n', '1 2 3 4 5\r\n', '1 2 3 4', '1 2', '1 2 3', '1 2 3', 'java', 'program'),
(49, 'Which of the following is a superclass of every class in Java?', 'ArrayList', 'Abstract class', 'Object class', 'String', 'Object class', 'java', 'theory'),
(50, 'What will be the output of the following Java code?\r\n   class Output \r\n    {\r\n         public static void main(String args[]) \r\n         {\r\n             double x = 3.14;  \r\n             int y = (int) Math.ceil(x);\r\n             System.out.print(y);\r\n         }\r\n    }', '3', '0', '4', '3.0', '4', 'java', 'program'),
(51, 'Which of the following type is provided by C++ but not C?', 'double', 'float', 'int', 'bool', 'bool', 'Cpp', 'theory'),
(52, ' What will be the output of the following C++ program?\r\n    #include <iomanip>\r\n    #include <iostream>\r\n    using namespace std;\r\n    int main()\r\n    {\r\n        cout << setprecision(17);\r\n        double d = 0.1;\r\n        cout << d << endl;\r\n        return 0;\r\n    }', 'compile time error', '0.100001', '0.11', '0.10000000000000001', '0.10000000000000001', 'Cpp', 'program'),
(53, 'Which keyword is used to define the macros in c++?', '#macro', '#define', 'macro', 'define', '#define', 'Cpp', 'theory'),
(54, 'The C++ code which causes abnormal termination/behaviour of a program should be written under _________ block.\r\n', 'catch', 'throw', 'try', 'finally', 'try', 'Cpp', 'theory'),
(55, 'What is Inheritance in C++?', 'Deriving new classes from existing classes', 'Overloading of classes', 'Classes with same names', 'Wrapping of data into a single class', 'Deriving new classes from existing classes', 'Cpp', 'theory'),
(56, ' What will be the output of the following C++ code?\r\n    #include <iostream>\r\n    using namespace std;\r\n    int main()\r\n    {\r\n        int a = 5;\r\n        float b;\r\n        cout << sizeof(++a + b);\r\n        cout << a;\r\n        return 0;\r\n    }\r\n', '2 5', '4 5', '4 6', '2 6', '4 5', 'Cpp', 'program'),
(57, 'What is meant by a polymorphism in C++?', 'class having only single form', 'class having four forms', 'class having many forms', 'class having two forms', 'class having many forms', 'Cpp', 'theory'),
(58, 'What is abstract class in C++?\r\na) Any Class in C++ is an abstract class\r\nb) Class from which any class is derived\r\nc) Class specifically used as a base class with atleast one virtual functions\r\nd) Class specifically used as a base class with atleast one pure virtual functions\r\n', 'Any Class in C++ is an abstract class', 'Class from which any class is derived', 'Class specifically used as a base class with atleast one virtual functions', 'Class specifically used as a base class with atleast one pure virtual functions', 'Class specifically used as a base class with atleast one pure virtual functions', 'Cpp', 'theory'),
(59, 'Which concept allows you to reuse the written code in C++?', 'Inheritance', 'Polymorphism', 'Abstraction', 'Encapsulation', 'Inheritance', 'Cpp', 'theory'),
(60, 'What will be the output of the following C++ code?\r\n    #include <iostream>\r\n    using namespace std;\r\n    int main ()\r\n    {\r\n        int a, b, c;\r\n        a = 2;\r\n        b = 7;\r\n        c = (a > b) ? a : b;\r\n        cout << c;\r\n        return 0;\r\n    }', '12', '14', '6', '7', '7', 'Cpp', 'program'),
(61, 'Pick the incorrect statement about inline functions in C++?', 'Saves overhead of a return call from a function', 'They are generally very large and complicated function', 'These functions are inserted/substituted at the point of call', 'They reduce function call overheads', 'They are generally very large and complicated function', 'Cpp', 'theory'),
(62, 'What is the meaning of the following declaration?\r\nint(*p[5])();\r\na) p is pointer to function\r\nb) p is array of pointer to function\r\nc) p is pointer to such function which return type is the array\r\nd) p is pointer to array of function', 'p is pointer to function', 'p is array of pointer to function', 'p is pointer to such function which return type is the array', 'p is pointer to array of function', 'p is array of pointer to function', 'Cpp', 'theory'),
(63, 'What will be the output of the following C++ code?\r\n   #include <iostream>\r\n   using namespace std;\r\n   int main()\r\n   {\r\n       int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\r\n       cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\r\n       return 0;\r\n   }', '15 18 21', '21 21 21', '24 24 24', 'Compile time error', '21 21 21', 'Cpp', 'program'),
(64, 'Which of the following accesses the seventh element stored in array?', 'array[6];', 'array[7];', 'array(7);', 'array;', 'array[6];', 'Cpp', 'theory'),
(65, 'What are the parts of the literal constants?', 'integer numerals', 'floating-point numerals', 'strings and boolean values', 'all of the mentioned', 'all of the mentioned', 'Cpp', 'theory'),
(66, 'How to declare a wide character in the string literal?', 'L prefix', 'l prefix', 'W prefix', 'Z prefix', 'L prefix', 'Cpp', 'theory'),
(67, ' What will be the output of the following C++ code?\r\n    #include <stdio.h>\r\n    #include <iostream>\r\n    using namespace std;\r\n    int main()\r\n    {\r\n        int array[] = {10, 20, 30};\r\n        cout << -2[array];\r\n        return 0;\r\n    }', '-15', '-30', 'compile time error', 'garbage value', '-30', 'Cpp', 'program'),
(68, 'Which of the following advantages we lose by using multiple inheritances?', 'Dynamic binding', 'Polymorphism', 'Both Dynamic binding & Polymorphism', 'Constructor', 'Both Dynamic binding & Polymorphism', 'Cpp', 'theory'),
(69, 'Which design patterns benefit from the multiple inheritances?', 'Adapter and observer pattern', 'Code pattern', 'Glue pattern', 'Star pattern', 'Adapter and observer pattern', 'Cpp', 'theory'),
(70, 'What will be the output of the following C++ code?\r\n    #include <iostream>\r\n    #include <string>\r\n    using namespace std;\r\n    int main ()\r\n    {\r\n        string str (\"Steve jobs founded the apple\");\r\n        string str2 (\"apple\");\r\n        unsigned found = str.find(str2);\r\n        if (found != string :: npos)\r\n            cout << found << \'\\n\';\r\n        return 0;\r\n    }\r\n', 'apple', '12', '23', 'Steve jobs founded the', '23', 'Cpp', 'program'),
(71, 'What will be the output of the following Java code?\r\n    class increment {\r\n        public static void main(String args[]) \r\n        {        \r\n             int g = 3;\r\n             System.out.print(++g * 8);\r\n        } \r\n    }', '32', '33', '24', '25', '32', 'java', 'program'),
(72, 'Which one of the following is not a Java feature?', 'Object-oriented', 'Use of pointers', 'Portable', 'Dynamic and Extensible', 'Use of pointers', 'java', 'theory'),
(73, 'Which of the following option leads to the portability and security of Java?', 'Bytecode is executed by JVM', 'The applet makes the Java code secure and portable', 'Use of exception handling', 'Dynamic binding between objects', 'Bytecode is executed by JVM', 'java', 'theory'),
(74, ' _____ is used to find and fix bugs in the Java programs.', 'JVM', 'JRE', 'JDK', 'JDB', 'JDB', 'java', 'theory'),
(76, 'What will be the output of the following Java program?\r\nclass output {\r\n        public static void main(String args[]) \r\n        {\r\n            double a, b,c;\r\n            a = 3.0/0;\r\n            b = 0/4.0;\r\n            c=0/0.0;\r\n \r\n	    System.out.println(a);\r\n            System.out.println(b);\r\n            System.out.println(c);\r\n        } \r\n    }', 'NaN', 'Infinity', '0.0', 'all of the mentioned', 'all of the mentioned', 'java', 'program'),
(77, 'Which of the following is a valid declaration of a char?', 'char ch = \'\\utea\';', 'char ca = \'tea\';', 'char cr = \\u0223;', 'char cc = \'\\itea\';', 'char ch = \'\\utea\';', 'java', 'theory'),
(78, ' What is the return type of the hashCode() method in the Object class?', 'Object', 'int', 'long', 'void', 'int', 'java', 'theory'),
(79, 'Evaluate the following Java expression, if x=3, y=5 and z=10:\r\n ++z + y - y + z + x++\r\n', '24', '23', '20', '25', '25', 'java', 'theory'),
(80, 'What will be the output of the following program?\r\n\r\npublic class Test {  \r\npublic static void main(String[] args) {  \r\n    int count = 1;  \r\n    while (count <= 15) {  \r\n    System.out.println(count % 2 == 1 ? \"***\" : \"+++++\");  \r\n    ++count;  \r\n        }      // end while  \r\n    }       // end main   \r\n }  ', '15 times ***', '15 times +++++', '8 times *** and 7 times +++++', 'Both will print only once', '8 times *** and 7 times +++++', 'java', 'program'),
(81, 'Which of these classes are the direct subclasses of the Throwable class?', 'RuntimeException and Error class', 'Exception and VirtualMachineError class', 'Error and Exception class', 'IOException and VirtualMachineError class', 'Error and Exception class', 'java', 'theory'),
(82, ' What do you mean by chained exceptions in Java?', 'Exceptions occurred by the VirtualMachineError', 'An exception caused by other exceptions', 'Exceptions occur in chains with discarding the debugging information', 'None of the above', 'An exception caused by other exceptions.', 'java', 'theory'),
(83, 'Which of the following for loop declaration is not valid?', 'for ( int i = 99; i >= 0; i / 9 )', 'for ( int i = 7; i <= 77; i += 7 )', 'for ( int i = 20; i >= 2; - -i )', 'for ( int i = 2; i <= 20; i = 2* i )', 'for ( int i = 99; i>=0; i / 9)\r\n\r\n', 'java', 'theory'),
(84, 'What will be the output of the following program?\r\npublic class Test2 {  \r\n    public static void main(String[] args) {  \r\n        StringBuffer s1 = new StringBuffer(\"Complete\");  \r\n        s1.setCharAt(1,\'i\');  \r\n        s1.setCharAt(7,\'d\');  \r\n        System.out.println(s1);  \r\n     }  \r\n } ', 'Complete', 'Iomplede', 'Cimpletd', 'Coipletd', 'Cimpletd', 'java', 'program'),
(85, 'The \\u0021 article referred to as?', 'Unicode escape sequence', 'Octal escape', 'Hexadecimal', 'Line feed', 'Unicode escape sequence', 'java', 'theory'),
(86, 'What is the use of the intern() method?', 'It returns the existing string from memory', 'It creates a new string in the database', 'It modifies the existing string in the database', 'None of the above', 'It returns the existing string from memory', 'java', 'theory'),
(87, 'What is the use of \\w in regex?', 'Used for a whitespace character', 'Used for a non-whitespace character', 'Used for a word character', 'Used for a non-word character', 'Used for a word character', 'java', 'theory'),
(88, 'Which of the following is a valid syntax to synchronize the HashMap?', 'Map m = hashMap.synchronizeMap();', 'HashMap map =hashMap.synchronizeMap();', 'Map m1 = Collections.synchronizedMap(hashMap);', 'Map m2 = Collection.synchronizeMap(hashMap);', 'Map m1 = Collections.synchronizedMap(hashMap);', 'java', 'theory'),
(89, 'Given,\r\nint values[ ] = {1,2,3,4,5,6,7,8,9,10};  \r\nfor(int i=0;i< Y; ++i)  \r\nSystem.out.println(values[i]);  \r\nFind the value of value[i]?', '10', '11', '15', 'None of the above', 'None of the above', 'java', 'program'),
(90, 'If three threads trying to share a single object at the same time, which condition will arise in this scenario?', 'Time-Lapse', 'Critical situation', 'Race condition', 'Recursion', 'Race condition', 'java', 'theory'),
(91, 'Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?\r\n\r\njavap tool\r\njavaw command\r\nJavadoc tool\r\njavah command', 'javap tool', 'javaw command', 'Javadoc tool', 'javah command', 'Javadoc tool', 'java', 'theory'),
(92, 'What will be the output of the following Java program?\r\n    class leftshift_operator \r\n    {\r\n        public static void main(String args[]) \r\n        {        \r\n             byte x = 64;\r\n             int i;\r\n             byte y; \r\n             i = x << 2;\r\n             y = (byte) (x << 2)\r\n             System.out.print(i + \" \" + y);\r\n        } \r\n    }', '0 256', '0 64', '256 0', '64 0', '256 0', 'java', 'program'),
(93, 'Is Python case sensitive when dealing with identifiers?', 'no', 'yes', 'machine dependent', 'none of the mentioned', 'no', 'python', 'theory'),
(94, 'Is Python code compiled or interpreted?', 'Python code is both compiled and interpreted', 'Python code is neither compiled nor interpreted', 'Python code is only compiled', 'Python code is only interpreted', 'Python code is neither compiled nor interpreted', 'python', 'theory'),
(95, 'What will be the value of the following Python expression?\r\n 4 + 3 % 5', '7', '2', '4', '1', '7', 'python', 'program'),
(96, 'Which of the following is used to define a block of code in Python language?', 'Indentation', 'Key', 'Brackets', 'All of the mentioned', 'Indentation', 'python', 'theory'),
(97, 'Which keyword is used for function in Python language?', 'Function', 'Def', 'Fun', 'Define', 'Def', 'python', 'theory'),
(98, 'Which of the following functions can help us to find the version of python that we are currently working on?', 'sys.version(1)', 'sys.version(0)', 'sys.version()', 'sys.version', 'sys.version(1)', 'python', 'theory'),
(99, 'Python supports the creation of anonymous functions at runtime, using a construct called __________', 'pi', 'anonymous', 'lambda', 'none of the mentioned', 'lambda', 'python', 'theory'),
(100, 'What will be the output of the following Python code?\r\ni = 1\r\nwhile True:\r\n    if i%3 == 0:\r\n        break\r\n    print(i)\r\n \r\n    i + = 1', '1 2 3', 'error', '1 2', 'none of the mentioned', 'error', 'python', 'program'),
(101, ' What is the order of precedence in python?\r\na) Exponential, Parentheses, Multiplication, Division, Addition, Subtraction\r\nb) Exponential, Parentheses, Division, Multiplication, Addition, Subtraction\r\nc) Parentheses, Exponential, Multiplication, Division, Subtraction, Addition\r\nd) Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 'Exponential, Parentheses, Multiplication, Division, Addition, Subtraction', 'Exponential, Parentheses, Division, Multiplication, Addition, Subtraction', 'Parentheses, Exponential, Multiplication, Division, Subtraction, Addition', 'Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 'Parentheses, Exponential, Multiplication, Division, Addition, Subtraction', 'python', 'theory'),
(102, 'What will be the output of the following Python code snippet if x=1?\r\nx<<2', '4', '2', '1', '8', '4', 'python', 'program'),
(103, 'What does pip stand for python?', 'unlimited length', 'all private members must have leading and trailing underscores', 'Preferred Installer Program', 'none of the mentioned', 'Preferred Installer Program', 'python', 'theory'),
(104, 'Which of the following is the truncation division operator in Python?', '|', '//', '/', '%', '//', 'python', 'theory'),
(105, 'What are the values of the following Python expressions?\r\n 2**(3**2)\r\n (2**3)**2\r\n 2**3**2', '512, 64, 512', '512, 512, 512', '64, 512, 64', '64, 64, 64', '512, 64, 512', 'python', 'program'),
(106, 'Which of the following is the use of id() function in python?', 'Every object doesn’t have a unique id', 'Id returns the identity of the object', 'All of the mentioned', 'None of the mentioned', 'Id returns the identity of the object', 'python', 'theory'),
(107, 'Which of these is the definition for packages in Python?', 'A set of main modules', 'A folder of python modules', 'A number of files containing Python definitions and statements', 'A set of programs making use of Python modules', 'A folder of python modules', 'python', 'theory'),
(108, 'What will be the output of the following Python function?\r\n\r\nlen([\"hello\",2, 4, 6])', 'Error', '6', '4', '3', '4', 'python', 'program'),
(109, 'Which of the following is not a core data type in Python programming?', 'Tuples', 'Lists', 'Class', 'Dictionary', 'Class', 'python', 'theory'),
(110, ' Which one of the following is not a keyword in Python language?', 'pass', 'eval', 'assert', 'nonlocal', 'eval', 'python', 'theory\r\n'),
(111, 'What will be the output of the following Python code snippet?\r\n for i in [1, 2, 3, 4][::-1]:\r\n     print (i)', '4 3 2 1', 'error', '1 2 3 4', 'none of the mentioned', '4 3 2 1', 'python', 'program'),
(112, 'Which module in the python standard library parses options received from the command line?', 'getarg', 'getopt', 'main', 'os', 'getopt', 'python', 'theory'),
(113, 'What arithmetic operators cannot be used with strings in Python?', '*', '–', '+', 'All of the mentioned', '–', 'python', 'theory'),
(114, 'What will be the output of the following Python statement?\r\n         >>>\"a\"+\"bc\"', 'bc', 'abc', 'a', 'bca', 'abc', 'python', 'theory'),
(115, 'Which of the following statements is used to create an empty set in Python?', '( )', '[ ]', '{ }', 'set()', 'set()', 'python', 'theory'),
(116, 'To add a new element to a list we use which Python command?', 'list1.addEnd(5)', 'list1.addLast(5)', 'list1.append(5)', 'list1.add(5)', 'list1.append(5)', 'python', 'theory'),
(117, 'Which of the following is a Python tuple?\r\na) {1, 2, 3}\r\nb) {}\r\nc) [1, 2, 3]\r\nd) (1, 2, 3)\r\nView Answer\r\n\r\nAnswer: d', '{1, 2, 3}', '{}', '[1, 2, 3]', '(1, 2, 3)', '(1, 2, 3)', 'python', 'program'),
(118, 'What will be the output of the following Python expression?\r\n  round(4.576)', '4', '4.6', '5', '4.5', '5', 'python', 'theory'),
(119, 'Which of the following is a feature of Python DocString?', 'In Python all functions should have a docstring', 'Docstrings can be accessed by the __doc__ attribute on objects', 'It provides a convenient way of associating documentation with Python modules, functions, classes, and methods', 'All of the mentioned', 'All of the mentioned', 'python', 'theory'),
(120, 'What is output of print(math.pow(3, 2))?\r\n', '9.0', 'None', '9', 'None of the mentioned', '9.0', 'python', 'theory'),
(121, 'Which of the following is the use of id() function in python?', 'Every object in Python doesn’t have a unique id', 'In Python Id function returns the identity of the object', 'None of the mentioned', 'All of the mentioned', 'In Python Id function returns the identity of the object', 'python', 'theory'),
(122, 'What will be the output of the following Python code?\r\nx = [[0], [1]]\r\nprint((\' \'.join(list(map(str, x))),))', '01', '[0] [1]', '(’01’)', '(‘[0] [1]’,)', '(‘[0] [1]’,)', 'python', 'program');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `quiz_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `attempted` int(11) NOT NULL,
  `not_attempted` int(11) NOT NULL,
  `correct_answers` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `quiz_name`, `user_id`, `student_name`, `attempted`, `not_attempted`, `correct_answers`, `created_at`) VALUES
(1, 'Java', 1, 'Tester', 8, 2, 5, '2022-08-08 05:58:57'),
(2, 'Java', 1, 'Tester', 8, 2, 5, '2022-08-08 06:01:16'),
(3, 'undefined', 0, '', 3, 7, 1, '2022-08-10 05:15:49'),
(4, 'undefined', 0, '', 3, 7, 0, '2022-08-10 05:17:37'),
(5, 'C', 0, '', 6, 4, 1, '2022-08-10 05:19:11'),
(6, 'Cpp', 0, '', 5, 5, 0, '2022-08-10 05:21:04'),
(7, 'Cpp', 0, 'Tester', 2, 8, 0, '2022-08-10 05:21:50'),
(8, 'C', 11, 'Tester', 1, 9, 0, '2022-08-10 06:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Tester', 'tester@gmail.com', 'cbrBX', '2022-08-01 07:33:58', '2022-08-05 06:19:02'),
(2, 'abc', 'abc@gmail.com', '123', '2022-08-03 06:49:41', '2022-08-03 06:49:41'),
(3, 'test', 'test@gmail.com', '1234', '2022-08-03 06:52:36', '2022-08-03 06:52:36'),
(4, 'test', 'test@gmail.com', '1234', '2022-08-03 06:54:44', '2022-08-03 06:54:44'),
(5, 'test', 'test@gmail.com', '1234', '2022-08-03 06:54:58', '2022-08-03 06:54:58'),
(6, 'test', 'test1@gmail.com', '1234', '2022-08-03 07:09:06', '2022-08-03 07:09:06'),
(7, 'wter', 'fhf@gmsil.com', 'asdf', '2022-08-04 05:44:42', '2022-08-04 05:44:42'),
(8, 'wter', 'fhff@gmsil.com', 'asdf', '2022-08-04 05:49:27', '2022-08-04 05:49:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
