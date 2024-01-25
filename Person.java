
public class Person {
  private String name;
  private int age;

  public Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  public void greet() {
    System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
  }

  public static void main(String[] args) {
    Person person = new Person("Charlie", 40);
    person.greet();
  }
}
