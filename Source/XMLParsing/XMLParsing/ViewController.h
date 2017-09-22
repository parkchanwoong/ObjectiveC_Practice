//
//  ViewController.h
//  XMLParsing
//
//  Created by ChoiJinYoung on 3/6/16.
//  Copyright © 2016 appstamp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSXMLParserDelegate, UITableViewDataSource,UITableViewDelegate>{
    NSXMLParser *parser;
    
    NSMutableArray *datalist;
    NSMutableDictionary *detailData;
    
    NSString *elementTemp;
    
    BOOL blank;

}


@end

