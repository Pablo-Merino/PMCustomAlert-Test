#import <UIKit/UIKit.h>
@interface PMCustomAlert : UIAlertView {
    int widthSize;
    int heightSize;
}
- (id) initPopupWithWidth:(int)width andHeight:(int)height;
@end
