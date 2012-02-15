//
//  ViewController.m
//  memoryExample
//
//  Created by mudassir iqbal on 2/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

-(void)arrFunc:(NSMutableArray*)a
{
    [a retain];
    
    
    [a addObject:@""];
    NSLog(@"retain count in arrFunc %d", [a retainCount]);
    
    [a release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSMutableArray *a =[[NSMutableArray alloc] initWithCapacity:16];
    
   
    
    [a addObject:@"1"];
    
    [self arrFunc:a];
    NSLog(@"retain count before %d", [a retainCount]);
    
    
    [a addObject:@"5"];
	NSLog(@"retain count after %d", [a retainCount]);
    
    int i=0;
    for (NSString *str in a) {
        i++;
    }
    
    NSLog(@"i is %d",[a count] );
    
    [a release];
    NSLog(@"retain count after %d", [a retainCount]);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
