//
//  DBQueryClass.m
//  SIMPL
//
//  Created by Akshay Patel on 12/09/17.
//  Copyright © 2017 Akshay Patel. All rights reserved.
//

#import "DBQueryClass.h"
#import "DBOperation.h"
@implementation DBQueryClass


+(BOOL)InsertData:(NSMutableDictionary*)dictData inTable:(NSString *)tableName
{
    
    NSString *fieldName = @"";
    NSString *fieldParameter = @"";
    
    NSArray *allKeys = [dictData allKeys];
    
    NSString *strComma = @"";
    
    for (NSString *strKey in allKeys) {
        NSObject *value = [dictData objectForKey:strKey];
        
        if ([value isKindOfClass:[NSString class]]) {
            fieldParameter = [fieldParameter stringByAppendingFormat:@"%@'%@'",strComma,value];
        }
        
        if ([value isKindOfClass:[NSNumber class]]) {
            fieldParameter = [fieldParameter stringByAppendingFormat:@"%@%@",strComma,value];
        }
        
        fieldName = [fieldName stringByAppendingFormat:@"%@%@",strComma,strKey];
        
        strComma = @",";
    }
    
    NSString *sql = [NSString stringWithFormat:@"insert into %@ (%@) values (%@)",tableName,fieldName,fieldParameter];
    
    
    
    
    BOOL isInsert = [DBOperation executeSQL:sql];
    NSLog(@"sql %@",sql);
    return isInsert;
    
}

+(NSArray*)GetLastRecord:(NSString*)tableName
{
    NSArray *arrdata = [[NSArray alloc]init];

     arrdata = [DBOperation selectData:[NSString stringWithFormat:@"SELECT * FROM '%@' ORDER BY id DESC LIMIT 1",tableName]];
    
    return arrdata;
}
+(NSArray*)GetTransactionFromID:(NSString*)transactionID TableName : (NSString*)tableName
{
   NSArray *arrdata = [[NSArray alloc]init];
    arrdata = [DBOperation selectData:[NSString stringWithFormat:@"SELECT * FROM '%@' WHERE id = '%@'",tableName,transactionID]];
    return arrdata;
}
+(NSArray*)GetAllData:(NSString*)tableName
{
    NSArray *arrdata = [[NSArray alloc]init];
    
    arrdata = [DBOperation selectData:[NSString stringWithFormat:@"select * from '%@'",tableName]];
    
    return arrdata;
}
+(BOOL)UpdateData:(NSMutableDictionary*)dictData inTable:(NSString *)tableName FieldID:(int)ID
{
    //NSString *strQuery =  [NSString stringWithFormat:@"UPDATE MemoStore set memoTitle='%@', memoDesc='%@'   WHERE ID='%d'",txtTitle.text,txtDescription.text,[_strMemoID intValue]];
    NSString *fieldName = @"";
    NSString *fieldParameter = @"";
    NSString *strComma = @"";
    NSArray *allKeys = [dictData allKeys];
    for (NSString *strKey in allKeys)
    {
        NSObject *value = [dictData objectForKey:strKey];
        
        if ([value isKindOfClass:[NSString class]]) {
            fieldParameter = [fieldParameter stringByAppendingFormat:@"%@%@='%@'",strComma,strKey,value];
        }
        
        if ([value isKindOfClass:[NSNumber class]]) {
            fieldParameter = [fieldParameter stringByAppendingFormat:@"%@%@=%@",strComma,strKey,value];
        }
        
        //fieldName = [fieldName stringByAppendingFormat:@"%@%@",strComma,fieldParameter];
        strComma = @",";
    }
    fieldName = fieldParameter;
    NSString *sql = [NSString stringWithFormat:@"UPDATE %@ set %@ WHERE id=%d",tableName,fieldName,ID];
    BOOL isUpdate = [DBOperation executeSQL:sql];
    
    
    return isUpdate;
}
+(BOOL)DeleteDataInTable:(NSString *)tableName FieldID:(int)ID
{
  NSString *sql = [NSString stringWithFormat:@"delete from %@ WHERE id=%d",tableName,ID];
    BOOL isDelete = [DBOperation executeSQL:sql];
    
    return isDelete;
}
+(NSArray*)GetTransactionIntable:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate
{
    NSString *sql = [NSString stringWithFormat:@"SELECT * from %@ where accountID = %d AND dueDate BETWEEN '%@' AND '%@' ORDER BY  dueDate ASC",tableName,bankAccountID,startDate,endDate];
    
    NSArray *arr = [DBOperation selectData:sql];
    return arr;
}
+(NSArray*)GetTransactionIntableUsingRevisedDate:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate
{
    NSString *sql = [NSString stringWithFormat:@"SELECT * from %@ where accountID = %d AND revisedDate BETWEEN '%@' AND '%@' ORDER BY  dueDate ASC",tableName,bankAccountID,startDate,endDate];
    
    NSArray *arr = [DBOperation selectData:sql];
    return arr;
}
+(NSArray*)GetOverDueTransactionIntable:(NSString*)tableName BankAccountID:(int)bankAccountID StartDate:(NSString*)startDate EndDate:(NSString*)endDate
{
    NSString *sql = [NSString stringWithFormat:@"SELECT * from %@ where accountID = %d AND dueDate <= date('now') AND dueDate BETWEEN '%@' AND '%@' AND isPaid = 0 ORDER BY  dueDate ASC",tableName,bankAccountID,startDate,endDate];
    
    NSArray *arr = [DBOperation selectData:sql];
    return arr;
}

@end
