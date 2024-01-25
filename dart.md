
# Programming Language Comparison: TypeScript, Dart, Java

This table compares common programming constructs across TypeScript, Dart, and Java.

| Functionality | TypeScript | Dart | Java |
|---------------|------------|------|------|
| 1. Declaring Variables | `let num: number = 5;` | `int num = 5;` | `int num = 5;` |
| 2. Defining a Function | `function add(a: number, b: number): number { return a + b; }` | `int add(int a, int b) { return a + b; }` | `public int add(int a, int b) { return a + b; }` |
| 3. Class with Constructor | `class Person { constructor(public name: string) {} }` | `class Person { Person(this.name); String name; }` | `public class Person { private String name; public Person(String name) { this.name = name; } }` |
| 4. Looping (for loop) | `for (let i = 0; i < 10; i++) { console.log(i); }` | `for (int i = 0; i < 10; i++) { print(i); }` | `for (int i = 0; i < 10; i++) { System.out.println(i); }` |
| 5. Handling Exceptions | `try { throw new Error('Error'); } catch (e) { console.log(e); }` | `try { throw Exception('Error'); } catch (e) { print(e); }` | `try { throw new Exception("Error"); } catch (Exception e) { System.out.println(e); }` |
| 6. Arrays | `let arr: number[] = [1, 2, 3];` | `List<int> arr = [1, 2, 3];` | `int[] arr = {1, 2, 3};` |
| 7. Maps/Dictionaries | `let map = new Map<string, number>();` | `Map<String, int> map = {};` | `Map<String, Integer> map = new HashMap<>();` |
| 8. Interfaces | `interface IShape { draw(): void; }` | `abstract class IShape { void draw(); }` | `interface IShape { void draw(); }` |
| 9. Inheritance | `class Circle extends Shape {}` | `class Circle extends Shape {}` | `class Circle extends Shape {}` |
| 10. Generics | `function identity<T>(arg: T): T { return arg; }` | `T identity<T>(T arg) { return arg; }` | `public <T> T identity(T arg) { return arg; }` |
| 11. Asynchronous Programming | `async function fetchData(): Promise<void> {}` | `Future<void> fetchData() async {}` | `public Future<Void> fetchData() {}` |
| 12. Lambda Expressions | `(x) => x * x` | `(x) => x * x` | `x -> x * x` |
| 13. Enums | `enum Color { Red, Green, Blue }` | `enum Color { red, green, blue }` | `enum Color { RED, GREEN, BLUE; }` |
| 14. Null Safety | `let str: string | null = null;` | `String? str = null;` | `String str = null;` |
| 15. String Interpolation | `` `Hello, ${name}!` `` | `'Hello, $name!'` | `"Hello, " + name + "!"` |
| 16. Multi-threading | `Worker` API | `Isolate.spawn` | `new Thread()` |
| 17. File I/O | Node.js `fs` module | `dart:io` package | `java.io` package |
| 18. Networking | Fetch API, Axios | `dart:io`, `package:http` | `java.net` package, Apache HttpClient |
| 19. JSON Parsing | `JSON.parse`, `JSON.stringify` | `json.decode`, `json.encode` | `org.json` library, Jackson, Gson |
| 20. Regular Expressions | `new RegExp('pattern')` | `RegExp('pattern')` | `Pattern.compile("pattern")` |

This comparison is intended for a quick overview and understanding of the syntax and style differences between these three languages.
