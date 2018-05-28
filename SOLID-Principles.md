* Single Responsibility
** Each class should have one reason to change
*** This should follow in to methods as well, a method should do one thing and have one reason to change
* Open/Closed
** Classes should be open for extension but closed for modification
** HOW??
* Liskov Substitution
** Child classes should be substitutable with their parents.
* Interface Segregation
** Depend on small abstractions of functionality.
** For instance, your class/method should need an object that fulfills some criteria, while a different method that does something different could rely on a different criteria.  At runtime you can inject a concrete implementation that fulfills both, *but* in six months when you want to re-use your method in another part of the code base (or another code base) the consumer only needs to provide a minimal concrete class to solve the dependencies that your method needs.  
* Dependency Inversion
** Not just _Dependency Injection_
** You should depend on abstractions and not concretions.  This implies injection since you will have to inject the concretions into the class/method.
