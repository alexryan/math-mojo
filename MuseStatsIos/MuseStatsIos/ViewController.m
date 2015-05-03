//
//  Interaxon, Inc. 2015
//  MuseStatsIos
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self) {
        // Create two arrays filled wiht questions and answers
        // and make the pointers point to them
        
        self.questions = @[@"5 + 0 =?",
                           @"4 + 6 =?",
                           @"6 x 3 =?",
                           @"7 - 4 =?",
                           @"2 x 3 =?",
                           @"9 + 8 =?",
                           @"9 x 9 =?",
                           @"10 - 8 =?",
                           @"7 + 9 =?",
                           @"8 x 8 =?",
                           @"4 - 0 =?",
                           @"2 x 6 =?",
                           @"8 + 7 =?",
                           @"9 + 9 =?",
                           @"5 - 5 =?",
                           @"1 + 6 =?",
                           @"8 - 1 =?",
                           @"9 + 3 =?",
                           @"2 x 9 =?",
                           @"5 x 7 =?"
                           ];
        self.answers = @[@"5",
                         @"10",
                         @"18",
                         @"3",
                         @"6",
                         @"17",
                         @"81",
                         @"2",
                         @"16",
                         @"64",
                         @"4",
                         @"12",
                         @"15",
                         @"18",
                         @"0",
                         @"7",
                         @"7",
                         @"12",
                         @"18",
                         @"35"];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction) updateMellowLabel: (double)data
{
    self.mellowLabel.text = @"0.5";
    //self.mellowLabel.text = NSString
}


- (IBAction) updateConcentrationLabel: (double)data
{
    self.mellowLabel.text = @"0.6";
}


- (IBAction) updateSlider: (double)data
{
    self.mellowLabel.text = @"0.6";
}


- (IBAction)nextQuestion:(UIButton *)sender
{
    //Step to the next question
    self.currentQuestionIndex++;
    
    // Am I past the last question?
    if (self.currentQuestionIndex == [self.questions count]) {
        // Go back to the first question
        self.currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions qrray
    NSString *question = self.questions[self.currentQuestionIndex];
    
    // Display the string in the question label
    self.questionLabel.text = question;
    
    // Reset the answer label
    //self.answerLabel.text = @"???";

    
}



@end
