//
//  main.m
//  Word Effects
//
//  Created by Steele on 2015-10-19.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        while (TRUE) {
            // 255 unit long array of characters
            char inputChars[255];
            
            NSLog(@"String Options:\n#1 - Uppercase\n#2 - Lowercase\n#3 - Numberize\n#4 - Canadianize\n#5 - Respond\n#6 - De-Space-It\n");
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            printf("Input a number operation: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // convert char array to an NSString object
            NSString *inputNumberString = [NSString stringWithUTF8String:inputChars];
            
            //Convert to int
            int operationNumber = [inputNumberString intValue];
            
            switch (operationNumber) {
                    
                case 1:
                    //Uppercase
                    inputString = [inputString uppercaseString];
                    NSLog(@"%@", inputString);
                    break;
                case 2:
                    //Lowercase
                    inputString = [inputString lowercaseString];
                    NSLog(@"%@", inputString);
                    break;
                case 3:{
                    //Numberize
                    int inputStringToNumber = [inputString intValue];
                    NSLog(@"%d", inputStringToNumber);
                    break;
                }
                case 4:{
                    //Canadianize
                    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                    NSString *outputString = [inputString stringByAppendingString:@",Eh?"];
                    NSLog(@"%@", outputString);
                    break;
                }
                case 5:
                     //Respond
                    inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                    
                    if([inputString hasSuffix:@"?"]){
                        NSLog(@"I don't know");
                    }
                    if([inputString hasSuffix:@"!"]){
                        NSLog(@"Whoa, calm down!");
                    }
                    break;
                case 6:
                    //De-Space-It
                    inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                     NSLog(@"%@", inputString);
                    break;
                default:
                    break;
            }
        }
        
    }
    return 0;
}
