//
//  UIImage+Resize.m
//  memberApp
//
//  Created by 李功骄 on 2019/4/25.
//  Copyright © 2019 田耀琦. All rights reserved.
//

#import "UIImage+Resize.h"

@implementation UIImage (Resize)
-(UIImage *)scaleImageToKb:(NSInteger)kb{
	
	if (!self) {
		return self;
	}
	if (kb<1) {
		return self;
	}
	
	kb*=1024;
	
	
	
	CGFloat compression = 0.9f;
	CGFloat maxCompression = 0.1f;
	NSData *imageData = UIImageJPEGRepresentation(self, compression);
	while ([imageData length] > kb && compression > maxCompression) {
		compression -= 0.1;
		imageData = UIImageJPEGRepresentation(self, compression);
	}
	NSLog(@"当前大小:%fkb",(float)[imageData length]/1024.0f);
	UIImage *compressedImage = [UIImage imageWithData:imageData];
	return compressedImage;
	
}
@end
