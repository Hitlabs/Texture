//
//  ASScrollDirection.mm
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <AsyncDisplayKit/ASBatchFetchingDimension.h>

BOOL ASBatchFetchingDimensionContainsTail(ASBatchFetchingDimension dimension) {
  return (dimension & ASBatchFetchingDimensionTail) != 0;
}

BOOL ASBatchFetchingDimensionContainsHead(ASBatchFetchingDimension dimension) {
  return (dimension & ASBatchFetchingDimensionHead) != 0;
}

NSString* ASBatchFetchingDimensionDescription(ASBatchFetchingDimension dimension) {
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    if (ASBatchFetchingDimensionContainsTail(dimension)) {
        [strings addObject:@"TAIL"];
    }
    if (ASBatchFetchingDimensionContainsHead(dimension)) {
        [strings addObject:@"HEAD"];
    }
    if (strings.count == 0) {
        [strings addObject:@"NONE"];
    }
    return [strings componentsJoinedByString:@","];
}
