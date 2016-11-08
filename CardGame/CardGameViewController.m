
#import "CardGameViewController.h"

@interface CardGameViewController ()

@end

@implementation CardGameViewController
- (IBAction)touchCardButton:(UIButton *)sender {
    UIImage *cardImage = [UIImage imageNamed:@"cardback"];
    [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
}


@end
