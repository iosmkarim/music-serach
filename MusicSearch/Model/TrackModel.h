//
//  TrackModel.h
//  MusicSearch
//
//  Created by Karim, Reazul on 2/4/17.
//  Copyright © 2017 Karim, Reazul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrackModel : NSObject
@property (nonatomic, strong) NSString *trackName;
@property (nonatomic, strong) NSString *artistName;
@property (nonatomic) double trackPrice;
@property (nonatomic) double collectionPrice;
@property (nonatomic, strong) NSString *previewUrl;
@property (nonatomic, strong) NSString *collectionViewUrl;
@property (nonatomic, strong) NSString *trackViewUrl;
@property (nonatomic, strong) NSString *artworkUrl;

-(id)initWithDictionary:(NSDictionary*)dictionary;
@end
