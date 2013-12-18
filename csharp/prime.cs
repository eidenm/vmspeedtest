public class prime {

    public static bool isPrime(int number) {
        for (int i = 2; i * i <= number; i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }
    
    
    public static int Main(string [] argv) {
        
        int limit = int.Parse(argv[0]);

        int res = 0;
        int prev = 0;
        for (int i = 2; i <= limit; i++) {
            if (isPrime(i)) {
               res = i - prev;
            } else {
               res = i - prev;
            }
            prev = res;
        }
        return 0;
    }
    
}
