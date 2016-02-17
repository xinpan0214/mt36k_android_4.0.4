// RUN: %clang_cc1 -x objective-c++ -triple x86_64-apple-darwin10 -fobjc-fragile-abi -emit-llvm -o - %s | FileCheck %s
// rdar://8604515

@interface I {}
-(unsigned int&)referenceCount;
@end

@interface MyClass
+(int)writeBlip:(I*)srcBlip;
@end

@implementation MyClass
+(int)writeBlip:(I*)srcBlip{
  return ([srcBlip referenceCount] == 0);
}
@end

// CHECK: [[T:%.*]] = call i32* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend
// CHECK: [[U:%.*]] = load i32* [[T]]
// CHECK  [[V:%.*]] = icmp eq i32 [[U]], 0