//
//  DBQueryClass.h
//  SIMPL
//
//  Created by Akshay Patel on 12/09/17.
//  Copyright © 2017 Akshay Patel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DBQueryClass : NSObject

+(BOOL)InsertData:(NSMutableDictionary*)dictData inTable:(NSString *)tableName;

+(NSArray*)GetAllData:(NSString*)tableName;

+(NSArray*)GetLastRecord:(NSString*)tableName;

+(NSArray*)GetTransactionFromID:(NSString*)transactionID TableName : (NSString*)tableName;

+(BOOL)UpdateData:(NSMutableDictionary*)dictData inTable:(NSString *)tableName FieldID:(int)ID;

+(BOOL)DeleteDataInTable:(NSString *)tableName FieldID:(int)ID;

+(NSArray*)GetTransactionIntable:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate;
+(NSArray*)GetOverDueTransactionIntable:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate;
+(NSArray*)GetTransactionIntableUsingRevisedDate:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate;
@end

