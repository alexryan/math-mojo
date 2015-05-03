//
//  Interaxon, Inc. 2015
//  MuseStatsIos
//

#import <UIKit/UIKit.h>
#import <Muse/Muse.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController<IXNMuseDataListener, IXNMuseConnectionListener>
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *mellowLabel;
@property (weak, nonatomic) IBOutlet UILabel *concentrationLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

- (IBAction)nextQuestion:(UIButton *)sender;


@end

