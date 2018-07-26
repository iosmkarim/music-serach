//
//  DetailViewController.h
//  MusicSearch
//
//  Created by Karim, Reazul on 2/5/17.
//  Copyright © 2017 Karim, Reazul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrackModel.h"

@interface DetailViewController : UIViewController
@property (nonatomic, strong) TrackModel *data;
@end
