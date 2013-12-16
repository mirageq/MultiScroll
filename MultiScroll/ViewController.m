//
//  ViewController.m
//  MultiScroll
//
//  Created by Meera Sundar on 16/12/13.
//  Copyright (c) 2013 Meera Sundar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    scroll_1 = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 400, 800)];
    scroll_1.delegate = self;
    scroll_1.scrollEnabled = YES;
    scroll_1.contentSize = CGSizeMake(400, 1000);
    
    scroll_2 = [[UIScrollView alloc] initWithFrame:CGRectMake(410, 0, 400, 800)];
    scroll_2.delegate = self;
    scroll_2.scrollEnabled = YES;
    scroll_2.contentSize = CGSizeMake(400, 1000);
    
    UIImage *image_1 = [UIImage imageNamed:@"Batman.png"];
    UIImage *image_2 = [UIImage imageNamed:@"ironman.png"];
    
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 400, 1000)];
    [imageView1 setImage:image_1];
    [scroll_1 addSubview:imageView1];
    [self.view addSubview:scroll_1];
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 400, 1000)];
    [imageView2 setImage:image_2];
    [scroll_2 addSubview:imageView2];
    [self.view addSubview:scroll_2];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
 if(scrollView == scroll_1)
 {
     scroll_2.contentOffset = scroll_1.contentOffset;
 }
    
    else if (scrollView == scroll_2)
    {
        scroll_1.contentOffset = scroll_2.contentOffset;
        
    }
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
