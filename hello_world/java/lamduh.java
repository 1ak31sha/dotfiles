// set the JAVA_HOME environement variable
// javac javafile.java
// java generatedClassName
class HelloWorldApp {
    public static void main(String[] args) {
        System.out.println("Hello World!"); // Display the string.
        Map < String, List < String >> phoneNumbers = new HashMap < String, List < String >> ();
phoneNumbers.put("John Lawson", Arrays.asList("3232312323", "8933555472"));
phoneNumbers.put("Mary Jane", Arrays.asList("12323344", "492648333"));
phoneNumbers.put("Mary Lou", Arrays.asList("77323344", "938448333"));
Map < String, List < String >> filteredNumbers = phoneNumbers.entrySet().stream()
    .filter(x -> x.getKey().contains("Mary"))
    .collect(Collectors.toMap(p -> p.getKey(), p -> p.getValue()));
filteredNumbers.forEach((key, value) -> {
    System.out.println("Name: " + key + ": ");
    value.forEach(System.out::println);
});
    }
}
