//
//  DetailViewController.h
//  TESTER
//
//  Created by Michael Rourke on 24/09/17.
//  Copyright © 2017 Michael Rourke. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

