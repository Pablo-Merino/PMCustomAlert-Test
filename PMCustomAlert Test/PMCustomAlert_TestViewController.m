//
//  PMCustomAlert_TestViewController.m
//  PMCustomAlert Test
//
//  Created by Pablo Merino on 15/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PMCustomAlert_TestViewController.h"
#import "PMCustomAlert.h"
@implementation PMCustomAlert_TestViewController

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/
-(IBAction)showPopup:(id)sender {
    alert = [[PMCustomAlert alloc] initPopupWithWidth:320 andHeight:240];
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(20, 10, 200, 25)];
    title.text = @"You can add any UIView";
    title.backgroundColor = [UIColor clearColor];
    title.textAlignment = UITextAlignmentCenter;
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15];
    title.shadowColor = [UIColor blackColor];
    title.shadowOffset = CGSizeMake(1, 1);
    [alert addSubview:title];
    [alert show];
    [self performSelector:@selector(hideAlert) withObject:nil afterDelay:4.0];

}
- (void) hideAlert {
	[alert dismissWithClickedButtonIndex:0 animated:YES];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
