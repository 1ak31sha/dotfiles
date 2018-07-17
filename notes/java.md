Wednesday, August 08, 2007
Vim Tips for Java #2: Using exuberant-ctags
ctags is a great tool for programmers. It creates an index to your source code to allow you to trawl through them for cross referencing. While the way it works doesn't look as snazzy as nicely formatted javadoc output like Netbeans, it does its job well enough for you to read up a field or method definition whenever you need it. You'll need to install exuberant-ctags separately, which you can find on its website.

A requirement of using ctags, is that you'll need to have the Java source code available for ctags to parse them into a searchable index file for vim. It's usually located in your Java distribution at $JAVA_HOME/src.zip. Unzip the file, and in my case I extract it into the $JAVA_HOME/share directory I've created. Then run exuberant-ctags:


exuberant-ctags -R --language-force=java -f.tags /opt/sun-jdk-1.5.0.08/share/


This command generates a '.tags' index file in my home directory. The next thing to do is to allow vim to be able to locate and use the index file. Add the following line into your .vimrc:


autocommand FileType java set tags=~/.tags


This should now allow you to jump to any definition in the Java API, whenever you need to look it up from your code. To test this, create a Java file and put some code in it:


public class TestClass {
   String s = new String();   
}


Move your cursor under to the word 'String' and press ctrl-]. Voila, you should now be reading into the source of.. not just yet, it is not java.lang.String! 
