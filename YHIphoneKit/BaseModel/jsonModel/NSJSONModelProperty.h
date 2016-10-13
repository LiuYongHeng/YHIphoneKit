//
//  NSJSONModelProperty.h
//  NiusaoCustomer
//
//  Created by 大笨钟 on 16/3/12.
//  Copyright © 2016年 hhn. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 相关知识请参见Runtime文档
 Type Encodings https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtTypeEncodings.html#//apple_ref/doc/uid/TP40008048-CH100-SW1
 Property Type String https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Articles/ocrtPropertyIntrospection.html#//apple_ref/doc/uid/TP40008048-CH101-SW6
 */
typedef NS_ENUM(NSInteger, NSJSONModelPropertyValueType) {
    NSClassPropertyValueTypeNone = 0,
    NSClassPropertyTypeChar,
    NSClassPropertyTypeInt,
    NSClassPropertyTypeShort,
    NSClassPropertyTypeLong,
    NSClassPropertyTypeLongLong,
    NSClassPropertyTypeUnsignedChar,
    NSClassPropertyTypeUnsignedInt,
    NSClassPropertyTypeUnsignedShort,
    NSClassPropertyTypeUnsignedLong,
    NSClassPropertyTypeUnsignedLongLong,
    NSClassPropertyTypeFloat,
    NSClassPropertyTypeDouble,
    NSClassPropertyTypeBool,
    NSClassPropertyTypeVoid,
    NSClassPropertyTypeCharString,
    NSClassPropertyTypeObject,
    NSClassPropertyTypeClassObject,
    NSClassPropertyTypeSelector,
    NSClassPropertyTypeArray,
    NSClassPropertyTypeStruct,
    NSClassPropertyTypeUnion,
    NSClassPropertyTypeBitField,
    NSClassPropertyTypePointer,
    NSClassPropertyTypeUnknow
};

@interface NSJSONModelProperty : NSObject
@property(nonatomic, copy) NSString *name;

@property(nonatomic, assign) NSJSONModelPropertyValueType valueType;
@property(nonatomic, copy) NSString *typeName;
@property(nonatomic, assign) Class objectClass;
@property(nonatomic, retain) NSArray *objectProtocols;
@property(nonatomic, assign) BOOL isReadonly;

- (id)initWithName:(NSString *)name typeString:(NSString *)typeString;

@end
