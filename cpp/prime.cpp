#include <stdio.h> 
#include <cstdlib>


bool isPrime(int eingabe){
	for(int i = 2; i * i <= eingabe; i++){
		if(eingabe % i == 0){
			return false;
		}
	}
	return true;
}

int main(int argc, char* argv[]){

	int anzahl = atoi(argv[1]);
	
        int res, prev;
	for (int i = 2; i <= anzahl; i++) { 
		if(isPrime(i)){
                   res = i - prev;
		} else {
                   res = i - prev;
                }
                prev = res;
	}
        //printf("%i\n", res);
} 
