//
//  ASBatchFetchingDimension.h
//  Texture
//
//  Copyright (c) Facebook, Inc. and its affiliates.  All rights reserved.
//  Changes after 4/13/2017 are: Copyright (c) Pinterest, Inc.  All rights reserved.
//  Licensed under Apache 2.0: http://www.apache.org/licenses/LICENSE-2.0
//

#import <Foundation/Foundation.h>

#import <AsyncDisplayKit/ASBaseDefines.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(unsigned char, ASBatchFetchingDimension) {
  ASBatchFetchingDimensionTail  = 1 << 0,
  ASBatchFetchingDimensionHead  = 1 << 1
};

ASDK_EXTERN BOOL ASBatchFetchingDimensionContainsTail(ASBatchFetchingDimension dimension);
ASDK_EXTERN BOOL ASBatchFetchingDimensionContainsHead(ASBatchFetchingDimension dimension);
ASDK_EXTERN NSString* ASBatchFetchingDimensionDescription(ASBatchFetchingDimension dimension);

NS_ASSUME_NONNULL_END
