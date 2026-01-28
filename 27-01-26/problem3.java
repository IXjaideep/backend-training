import java.util.*;
import java.util.logging.Logger;
class invalidEmail extends Exception{

    public invalidEmail(String str){
        super(str);
    }
}
class invalidUserName extends Exception{

    public invalidUserName(String str){
        super(str);
    }
}
class AgeEligibility extends Exception{

    public AgeEligibility(String str){
        super(str);
    }
}
class InvalidAge extends Exception{
    public InvalidAge(String str){
        super(str);
    }
}
public class problem3 {
        private static final Logger logger = Logger.getLogger(problem3.class.getName());
        static void checkEmail(String str) throws invalidEmail{
            int lower=0;
            int upper =0;
            int SpecialChar=0;
            StringBuilder endString = new StringBuilder();
            for(int i =0;i<str.length();i++){
                char c = str.charAt(i);
                if(c>='a' && c<='z'){
                    lower++;
                }
                if(c>='A' && c<='Z'){
                    upper++;
                }
                if(c == '@'){
                    SpecialChar++;
                    for(int j =i+1; j<str.length();j++){
                        endString.append(str.charAt(j));
                    }
                    break;
                }
            }
            String d = endString.toString();
            if(d.equals("gmail.com") || d.equals("yahool.com") || d.equals("hotmail.com")){
                SpecialChar++;
            }
            if((lower >= 3) &&(upper >= 1) && (SpecialChar == 2)){
                logger.info("valid Email");
            }
            else{
                throw new invalidEmail("You Have Entered Invalid Email-Id");
            }
        }
        static void checkUserName(String str) throws invalidUserName{
            int lower=0;
            int upper =0;
            int num =0;
            if(str.length() >= 8){
                for(int i =0;i<str.length();i++){
                    char c = str.charAt(i);
                    if(c>='a' && c<='z'){
                        lower++;
                    }
                    if(c>='A' && c<='Z'){
                        upper++;
                    }
                    if(c>='0' && c<='9'){
                        num++;
                    }
                }
            }
            else{
                throw new invalidUserName("Username must be at least 8 characters");
            }
            if((lower >= 3) &&(upper >= 1) && (num >= 3)){
                logger.info("valid UserName");
            }
            else{
                throw new invalidUserName("You Have Entered Invalid UserName-Id");
            }
        }
        static void eligibility(int age) throws AgeEligibility{
            if( age > 18){
                logger.info("Your are eligible");
            }
            else{
                throw new AgeEligibility("You are not eligible for using mails");
            }
        }
        static void InvalidEntry(int t) throws InvalidAge{
            if(t>=0){
                throw new InvalidAge("Enter Integer value");
            }
        }
        
        public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String Username;
        String email;
        int age;
       try {
            System.out.println("enter your username :- ");
           Username = sc.nextLine();
           checkUserName(Username);
           System.out.println("Enter your Email :-");
           email = sc.nextLine();
            checkEmail(email);
           System.out.println("Enter your age :-");
            age=sc.nextInt();
            InvalidEntry(age);
            eligibility(age);

       }
       catch(InvalidAge e){
            logger.warning(e.getMessage());
       }
       catch(invalidEmail e){
            logger.warning(e.getMessage());

       }
       catch(invalidUserName e){
            logger.warning(e.getMessage());

       }
       catch(AgeEligibility e){
            logger.warning(e.getMessage());
       }

   }
}