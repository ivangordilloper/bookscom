package BooksCom
class InicioController {

    def home() {

    }

    def contacto(){

    }
    def registrar(){

    }

    def IniciarSesion(){

    }

    def nosotros(){

    }

    def FOAFF(){
        HelloSemanticWeb hello = new HelloSemanticWeb();

        //Load my FOAF friends
        System.out.println("Load my FOAF Friends");
        hello.populateFOAFFriends();

        // Say Hello to myself
        System.out.println("\nSay Hello to Myself");
        hello.mySelf(hello._friends);

        // Say Hello to my FOAF Friends
        System.out.println("\nSay Hello to my FOAF Friends");
        hello.myFriends(hello._friends);

        //Add my new friends
        System.out.println("\nadd my new friends");
        hello.populateNewFriends();

        //Say hello to my friends - hey my new ones are missing?
        System.out.println("\nSay hello to all my friends - hey the new ones are missing!");
        hello.myFriends(hello._friends);

        // Add the ontologies
        System.out.println("\nAdd the Ontologies");
        hello.populateFOAFSchema();
        hello.populateNewFriendsSchema();

        //See if the ontologies help identify my new friends? Nope!
        System.out.println("\nSee if the ontologies help to say hello to all my friends - Nope!");
        hello.myFriends(hello._friends);

        //Align the ontologies to bind my friends together
        System.out.println("\nOk, lets add alignment statements for the two ontologies.");
        hello.addAlignment();

        //Now say hello to my friends - nope still no new friends!
        System.out.println("\nTry again - Hello to all my friends - nope still not all!");
        hello.myFriends(hello._friends);

        //Run reasoner to  align the instances
        System.out.println("\nRun a Reasoner");
        hello.bindReasoner();
        System.out.println("Running Pellet");
        hello.runPellet();

        //Say hello to all my friends
        System.out.println("\fFinally- Hello to all my friends!");
        hello.myFriends(hello.inferredFriends);


        // Say hello to my self again - oh no there are two of us!
        System.out.println("\nSay hello to myself - oh no there are two names for me!");
        hello.mySelf(hello.inferredFriends);



        // Add a rule to make us the same
        System.out.println("\nAdd a rule to make just one name");
        //hello.applySelfRule(hello.inferredFriends);


        // Now say hello to us - hey one of us now
        System.out.println("\nJust checking there is now one name for me!");
        hello.mySelf(hello.inferredFriends);

        // Just to make sure i didn't mess up anything - say hello to my all my friends again
        System.out.println("\nJust checking that I didn't mess anthing up - Say hello to all my friends again.");
        hello.myFriends(hello.inferredFriends);

        //One more thing - now we can set a restriction
        System.out.println("\nEstablishing a restriction to just get email friends");
        hello.setRestriction(hello.inferredFriends);
        hello.myEmailFriends(hello.inferredFriends);

        //then a rule
        System.out.println("\nSay hello to my gmail friends only");
        hello.runJenaRule(hello.inferredFriends);
        hello.myGmailFriends(hello.inferredFriends);

        hello.myGmailFriends(hello._friends);


        System.out.println("\nSay hello to my gmail friends only wo entailments");
        System.out.println("\nSuccess!");
        ["Exito": "hola"]
    }
}
