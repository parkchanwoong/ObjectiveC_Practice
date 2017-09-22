//
//  ViewController.h
//  XMLParsing
//
//  Created by 박찬웅 on 2017. 7. 11..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,NSXMLParserDelegate>
{
    NSXMLParser *parser;
    NSMutableArray *datalist;
    NSMutableDictionary *detailData;
    
    NSString *elementTemp;
    
    BOOL blank;
}



@end

