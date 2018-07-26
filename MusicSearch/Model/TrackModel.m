//
//  TrackModel.m
//  MusicSearch
//
//  Created by Karim, Reazul on 2/4/17.
//  Copyright © 2017 Karim, Reazul. All rights reserved.
//

#import "TrackModel.h"

@implementation TrackModel
-(id)initWithDictionary:(NSDictionary *)dictionary{
    self = [super init];
    if(self){
        self.trackName = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"trackName"]];
        self.artistName = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"artistName"]];
        self.trackPrice = [[dictionary objectForKey:@"trackPricee"] doubleValue];
        self.collectionPrice = [[dictionary objectForKey:@"collectionPrice"] doubleValue];
        self.previewUrl = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"previewUrl"]];
        self.collectionViewUrl = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"collectionViewUrl"]];
        self.trackViewUrl = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"trackViewUrl"]];
        self.artworkUrl = [Utility replaceNullStringWithNil:[dictionary objectForKey:@"artworkUrl60"]];
    }
    return self;
}
@end
