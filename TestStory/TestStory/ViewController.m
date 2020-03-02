//
//  ViewController.m
//  TestStory
//
//  Created by bairn on 2019/5/11.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *testb;

@property(strong,nonatomic) NSMutableArray *array;

@property(nonatomic) dispatch_semaphore_t lockt;

@property(copy,nonatomic) NSString *det;
@end

@implementation ViewController

- (void)viewDidLoad {
    //
    [super viewDidLoad];
    
    [self.testb setTitle:@"test4e33" forState:UIControlStateNormal];
    self.array = [NSMutableArray new];
    [self.array addObject:[NSNumber numberWithInt:1]];
    
    self.det = @"1";
    self.det = @"3";
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        
//    });
    
    
    NSLog(@"eeee000044");
    
    dispatch_queue_t t = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
    dispatch_apply(6, t, ^(size_t index) {
        NSLog(@"%zd",index);
    });
    
    self.lockt = dispatch_semaphore_create(1);
    
}

- (IBAction)testbp:(id)sender {
    NSLog(@"");
}


@end
