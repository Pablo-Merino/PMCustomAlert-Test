#import "PMCustomAlert.h"
@implementation PMCustomAlert
- (id) initPopupWithWidth:(int)width andHeight:(int)height {
    if (self = [super init]) {
        heightSize = height;
        widthSize = width;
        return self;

    }
    return nil;
}
- (void) show {
	[super show];
	
	self.bounds = CGRectMake(0, 0, widthSize, heightSize);
}
@end
