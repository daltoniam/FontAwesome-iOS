///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  NSString+FontAwesome.m
//  iOSTester
//
//  Created by Dalton Cherry on 4/24/13.
//  Copyright 2013 Basement Krew. All rights reserved.
//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


#import "NSString+FontAwesome.h"

@implementation NSString (AwesomeString)

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//so this is not the way I would have liked to acomplished this. The best way would have been to figure out how to properly
//increment a utf8 character. That is what we are doing here, but I am certain there is a better way to do this.
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//we jump over to the right index to properly navigate the utf8 character
+(int)jumpCaculate:(int)index
{
    //int offset = index/15; there is a possible algorithm somewhere in here
    //if(offset == 2)
    //    offset += 1;
    int offset = 0;
    if(index > 14)
        offset += 1;
    if(index > 29)
        offset += 2;
    
    if(index > 74)
        offset += 1;
    if(index > 89)
        offset += 1;
    if(index > 104)
        offset += 1;
    if(index > 134)
        offset += 1;
    if(index > 149)
        offset += 1;
    if(index > 155)
        offset += 1;
    if(index > 167)
        offset += 12;
    if(index > 182)
        offset += 1;
    if(index > 197)
        offset += 1;
    if(index > 212)
        offset += 1;
    if(index > 242)
        offset += 1;
    return offset;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//start with the first character and jump to the next ones
+(NSString*)awesomeIcon:(AwesomeIcon)index
{
    char value[4] = "\uf000";
    int offset = [self jumpCaculate:index];
    index += offset;
    int first = index/63;
    value[1] += first;
    if(first)
        index = index-(63*first);
    
    int second = index;
    value[2] += second;
    
    NSString *string = [NSString stringWithUTF8String:value];
    return string;
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

@end
