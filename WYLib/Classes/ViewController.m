//
//  ViewController.m
//  ThreadLearning
//
//  Created by luguoliang on 2020/6/8.
//  Copyright © 2020 luguoliang. All rights reserved.
//

#import "ViewController.h"
#import <os/lock.h>
@interface ViewController ()
//@property(nonatomic,strong)UITableView*mytableView;
@property(nonatomic,strong)dispatch_source_t time;
@property (atomic, assign)    int       intA;
@property(nonatomic,copy)NSString*stringVlaue;
@property(nonatomic,strong) dispatch_queue_t queue;
@property(nonatomic,strong)NSLock *lock;


@property (nonatomic, assign) NSInteger money;
//@property (nonatomic, assign) os_unfair_lock  lock;
//@property(atomic,assign) BOOL bol;
@end

@implementation ViewController
@synthesize stringVlaue = _stringVlaue;
@synthesize intA = _intA;


//-(UITableView*)mytableView{
//    if (!_mytableView) {
//        _mytableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStyleGrouped];
//    }
//    return _mytableView;
//}


//-(void)setIntA:(int)intA{
////    @synchronized (self) {
////        _intA = intA;
////    }
////    dispatch_sync(self.queue, ^{
////        _intA = intA;
////    });
//    [self.lock lock];
//    _intA = intA;
//    [self.lock unlock];
//
//}
//-(int)intA{
//
////    @synchronized (self) {
////        return _intA;
////    }
////    dispatch_sync(self.queue, ^{
////        return _intA;
////    });
////    __block int a;
////    dispatch_sync(self.queue, ^{
////        a = _intA;
////    });
////    return a;
////    int a;
////    [self.lock lock];
////    a = _intA;
////    [self.lock unlock];
////    return a;
//
//}

-(NSString*)stringVlaue{
    @synchronized (self) {
        return _stringVlaue;
    }
}
-(void)setStringVlaue:(NSString *)stringVlaue{
    @synchronized (self) {
        _stringVlaue = stringVlaue;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.queue = dispatch_queue_create("t", DISPATCH_QUEUE_CONCURRENT);
    
    
    
//    //线程A
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
////        [self.lock lock];
//        for (int i = 0; i < 10000; i ++)
//           {
////               self.intA = i;
//               self.intA = self.intA +1;
//
//               NSLog(@"Thread A: %d\n", self.intA);
//           }
////        [self.lock unlock];
//    });
//
//
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        for (int i = 10000; i > 0; i --)
//        {
//            self.intA = self.intA + 1;
////            _intA = i;
////            self->_intA = i  - 1;
//
//            NSLog(@"Thread B: %d\n", self.intA);
//        }
//    });
    
//     dispatch_async(dispatch_get_global_queue(0, 0), ^{
//            for (int i = 0; i < 10000; i ++)
//            {
//    //            self.intA = self.intA + 1;
//    //            _intA = _intA +1;
//                self->_intA = i  - 2;
//
//                NSLog(@"Thread c: %d\n", self.intA);
//            }
//        });
    //线程B
    
    
//    self.time = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
//    dispatch_source_set_timer(self.time, dispatch_walltime(NULL, 0), 1*NSEC_PER_SEC, 0);
//    dispatch_source_set_event_handler(self.time, ^{
//
//    });
////
////    dispatch_resume(self.time);
//    dispatch_suspend(self.time);
    
    
//    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3*NSEC_PER_SEC));
//    dispatch_after(time, dispatch_get_main_queue(), ^{
//
//    });
//
//    [self.view addSubview:self.mytableView];
//    self.mytableView.delegate = self;
//    self.mytableView.dataSource = self;
//    dispatch_queue_t serialQueue = dispatch_queue_create("Dan-serial", DISPATCH_QUEUE_SERIAL);
////    for(int i = 0; i < 5; i++){
////        dispatch_async(serialQueue, ^{
////            NSLog(@"我开始了：%@ , %@",@(i),[NSThread currentThread]);
////            [NSThread sleepForTimeInterval: i % 3];
////        });
//
//
//      for(int i = 0; i < 5; i++){
//            dispatch_sync(serialQueue, ^{
//                NSLog(@"我开始了：%@ , %@",@(i),[NSThread currentThread]);
//                [NSThread sleepForTimeInterval: i % 3];
//            });
//        }
//
    
//    NSMutableString *mutString = [NSMutableString stringWithFormat:@"a"];
////    [mutString appendString:@"a"];
//    NSLog(<#NSString * _Nonnull format, ...#>)
//    NSLog(@"%@",mutString);
//    NSMutableArray*mutableArray = [NSMutableArray arrayWithObjects:@"1",@"2",@"3", nil];
//    [[mutableArray copy] removeAllObjects];
//    self.array = mutableArray;
//
//    NSLog(@"%@",self.array);
//    [mutableArray removeAllObjects];
//    NSLog(@"%@",self.array);
    
    
    
//    NSString *tem = [self stringValue];
//    NSLog(@"%@",tem);
    
    

//    dispatch_group_t group = dispatch_group_create();
//
//    dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
//        //线程1
//    });
//    dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
//        //线程2
//    });
//
////    dispatch_notify(group, dispatch_get_global_queue(0, 0), ^{
////        //线程3
////    });
//    dispatch_group_notify(group, dispatch_get_global_queue(0, 0), ^{
//        //线程3
//    });
//
    
//    dispatch_group_t group = dispatch_group_create();
//
//    dispatch_queue_t queue = dispatch_queue_create("lgl", DISPATCH_QUEUE_SERIAL);
//
//    dispatch_group_async(group, queue, ^{
//
//    });
//    dispatch_group_async(group, queue, ^{
//
//    });
//
//    dispatch_group_notify(group, queue, ^{
//        dispatch_async(dispatch_get_global_queue(0, 0), ^{
//
//        });
//    });
    
    
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_queue_t queue = dispatch_queue_create("t", DISPATCH_QUEUE_SERIAL);
//
//    dispatch_group_async(group, queue, ^{
//        //
//    });
//    dispatch_group_async(group, queue, ^{
//        //
//    });
//    dispatch_group_notify(group, queue, ^{
//        //
//    });
    
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_queue_t queue = dispatch_queue_create("r", DISPATCH_QUEUE_SERIAL);
//    dispatch_group_async(group, queue, ^{
//
//    });
//    dispatch_group_async(group, queue, ^{
//
//    });
//
//    dispatch_group_notify(group, queue, ^{
//
//    });
//
    
    
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_queue_t queue = dispatch_queue_create("t", DISPATCH_QUEUE_SERIAL);
//
//    dispatch_group_async(group, queue, ^{
//
//    });
//    dispatch_group_async(group, queue, ^{
//
//    });
//
//    dispatch_group_notify(group, queue, ^{
//
//    });
    
//    dispatch_async(dispatch_get_, <#^(void)block#>)
//    dispatch_queue_t que = dispatch_queue_create("t", DISPATCH_TARGET_QUEUE_DEFAULT);
//
//    NSLog(@"1");
//    dispatch_queue_t queue = dispatch_queue_create("a", DISPATCH_QUEUE_CONCURRENT);
//
//    dispatch_sync(dispatch_get_main_queue(), ^{
//        NSLog(@"2");
//    });
//    NSLog(@"3");
//    dispatch_time_t time = dispatch_time(<#dispatch_time_t when#>, <#int64_t delta#>)
    // Do any addition\=l setup after loading the view.
    
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_LOW, 0);
    
    
//    23
}


-(NSString*)stringValue{
    NSString *str = [[NSString alloc] initWithFormat:@"%@",self];
    return str;
}
@end
