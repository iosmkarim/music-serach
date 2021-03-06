//
//  APIManager.m
//  MusicSearch
//
//  Created by Karim, Reazul on 2/4/17.
//  Copyright © 2017 Karim, Reazul. All rights reserved.
//

#import "APIManager.h"
//https://itunes.apple.com/search?term=tom+waits
@implementation APIManager

-(void)getDataFromURL:(NSString*)url withParameters:(NSDictionary*)dictionary completionBlock:(void(^)(id))completion{
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:configuration];
    NSString *urlString = [self getURLStringWithEndPoint:url parameter:dictionary];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlString] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:30.0];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if(error){
                 completion(error);
            }
            else{
                completion(data);
            }
        });
    }];
    [dataTask resume];
}

-(NSString*)getURLStringWithEndPoint:(NSString*)url parameter:(NSDictionary*)params{
    NSString *searchString = [params objectForKey:@"search"];
    searchString = [searchString stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    return [NSString stringWithFormat:@"%@%@term=%@",BASE_URL,url,searchString];
}

@end
