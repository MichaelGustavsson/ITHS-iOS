

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject

- (id) initWithMake:(NSString*)make andModel:(NSString*)model;
@property NSString *make;
@property NSString *model;
@property int modelYear;

- (void) break;

@end
