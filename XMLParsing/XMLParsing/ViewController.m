//
//  ViewController.m
//  XMLParsing
//
//  Created by 박찬웅 on 2017. 7. 11..
//  Copyright © 2017년 Parkchanwoong. All rights reserved.
//

#import "ViewController.h"
#import "WeatherCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    datalist = [[NSMutableArray alloc] init];
    
    
    
    
    parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"]];

    parser.delegate = self;
    [parser parse];
    
    NSLog(@"%@",datalist);
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict
{
    NSLog(@"didStartElement : %@", elementName);
    if ([elementName isEqualToString:@"local"])
    {
        detailData = [[NSMutableDictionary alloc]init];
    }
    elementTemp = elementName;
    blank = YES;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    if(blank == YES && ![elementTemp isEqualToString:@"local"])
    {
        NSLog(@"foundCharacters : %@", string);
        [detailData setObject:string forKey:elementTemp];
    }
    
}


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:@"local"])
    {
        [datalist addObject:detailData];
    }
    NSLog(@"didEndElement : %@", elementName);
    blank = NO;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"weather" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [datalist objectAtIndex:indexPath.row];
    
    cell.countryLabel.text = [dicTemp objectForKey:@"country"];
    NSString *weatherStr = [dicTemp objectForKey:@"weather"];
    cell.weatherLabel.text = weatherStr;
    cell.temperatureLabel.text = [dicTemp objectForKey:@"temperature"];
    
    if ([weatherStr isEqualToString:@"맑음"])
    {
        cell.imgView.image = [UIImage imageNamed:@"sunny"];
    } else if([weatherStr isEqualToString:@"비"]) {
        cell.imgView.image = [UIImage imageNamed:@"rainy"];
    } else if([weatherStr isEqualToString:@"흐림"]) {
        cell.imgView.image = [UIImage imageNamed:@"cloudy"];
    } else if([weatherStr isEqualToString:@"눈"]) {
        cell.imgView.image = [UIImage imageNamed:@"snow"];
    } else {
        cell.imgView.image = [UIImage imageNamed:@"blizzard"];
    }
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    
    return datalist.count;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
