//
//  ViewController.m
//  SwiftInObjc
//
//  Created by 전상현 on 2020/11/19.
//

#import "ViewController.h"
#import "SwiftInObjc-Swift.h"

@interface ViewController () <TestViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onClick:(id)sender {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    TestViewController *controller = [sb instantiateViewControllerWithIdentifier:@"TestViewController"];
    
    controller.delegate = self;
    
    [self presentViewController:controller animated:YES completion:NULL];
}

- (void)confirmWithResult:(NSString * _Nonnull)result {
    NSLog(@">>> %@", result);
}

@end
