#* @post /morpt
prdMoRpt <- function(FBillNo="SCHB2022050002",
                     FPrdOrgId="100",
                     FBillType="SCHBD01_SYS",
                     FDate="2022-05-19",
                     FMaterialId="800788",
                     FBomId="800788_V1.0",
                     FProductType="1",
                     FReportType="HBLX01_SYS",
                     FUnitID="Pcs",
                     FQuaQty=0,
                     FFailQty=0,
                     FReworkQty=0,
                     FScrapQty=0,
                     FReMadeQty=0,
                     FFinishQty=0,
                     FWorkshipId='BM000040',
                     FMoBillNo="MO202203632",
                     FMoEntrySeq=1,
                     FCreatorId='胡立磊',
                     FCreateDate="2022-05-19",
                     FApproverId='韩向松',
                     FApproveDate="2022-05-19"
) {

   conn = tsda::odbc_getConn(token = '9B6F803F-9D37-41A2-BDA0-70A7179AF0F3')
   FBillNo= as.character(FBillNo)
   FPrdOrgId= as.character(FPrdOrgId)
   FBillType=as.character(FBillType)
   FDate=as.character(FDate)
   FMaterialId=as.character(FMaterialId)
   FBomId=as.character(FBomId)
   FProductType=as.character(FProductType)
   FReportType=as.character(FReportType)
   FUnitID=as.character(FUnitID)
   FQuaQty=as.numeric(FQuaQty)
   FFailQty=as.numeric(FFailQty)
   FReworkQty=as.numeric(FReworkQty)
   FScrapQty=as.numeric(FScrapQty)
   FReMadeQty=as.numeric(FReMadeQty)
   FFinishQty=as.numeric(FFinishQty)
   FWorkshipId=as.character(FWorkshipId)
   FMoBillNo=as.character(FMoBillNo)
   FMoEntrySeq=as.integer(FMoEntrySeq)
   FCreatorId=as.character(FCreatorId)
   FCreateDate=as.character(FCreateDate)
   FApproverId=as.character(FApproverId)
   FApproveDate=as.character(FApproveDate)
   data =data.frame(FBillNo,
                    FPrdOrgId,
                    FBillType,
                    FDate,
                    FMaterialId,
                    FBomId,
                    FProductType,
                    FReportType,
                    FUnitID,
                    FQuaQty,
                    FFailQty,
                    FReworkQty,
                    FScrapQty,
                    FReMadeQty,
                    FFinishQty,
                    FWorkshipId,
                    FMoBillNo,
                    FMoEntrySeq,
                    FCreatorId,
                    FCreateDate,
                    FApproverId,
                    FApproveDate,
                    stringsAsFactors = F
   )
   res = tryCatch({
     tsda::odbc_writeTable(conn = conn,table_name = 'rds_prd_MoRpt_mes',r_object = data,append = T)
     list(status ='true',data=FBillNo,error='')

   }, error = function(e){
      list(status ='false',data=FBillNo,error=as.character(e))

   })

   res


}

#* @post /morpt_add
prdMoRpt_add <- function(
                     FToken ,
                     FBillNo="SCHB2022050002",
                     FPrdOrgId="100",
                     FBillType="SCHBD01_SYS",
                     FDate="2022-05-19",
                     FMaterialId="800788",
                     FBomId="800788_V1.0",
                     FProductType="1",
                     FReportType="HBLX01_SYS",
                     FUnitID="Pcs",
                     FQuaQty=0,
                     FFailQty=0,
                     FReworkQty=0,
                     FScrapQty=0,
                     FReMadeQty=0,
                     FFinishQty=0,
                     FWorkshipId='BM000040',
                     FMoBillNo="MO202203632",
                     FMoEntrySeq=1,
                     FCreatorId='胡立磊',
                     FCreateDate="2022-05-19",
                     FApproverId='韩向松',
                     FApproveDate="2022-05-19"
) {
   FToken = as.character(FToken)
   flag = tsda::odbc_checkToken(token =FToken )
   if(flag){
      #口令正常
      conn = tsda::odbc_getConn(token = FToken)
      FBillNo= as.character(FBillNo)
      FPrdOrgId= as.character(FPrdOrgId)
      FBillType=as.character(FBillType)
      FDate=as.character(FDate)
      FMaterialId=as.character(FMaterialId)
      FBomId=as.character(FBomId)
      FProductType=as.character(FProductType)
      FReportType=as.character(FReportType)
      FUnitID=as.character(FUnitID)
      FQuaQty=as.numeric(FQuaQty)
      FFailQty=as.numeric(FFailQty)
      FReworkQty=as.numeric(FReworkQty)
      FScrapQty=as.numeric(FScrapQty)
      FReMadeQty=as.numeric(FReMadeQty)
      FFinishQty=as.numeric(FFinishQty)
      FWorkshipId=as.character(FWorkshipId)
      FMoBillNo=as.character(FMoBillNo)
      FMoEntrySeq=as.integer(FMoEntrySeq)
      FCreatorId=as.character(FCreatorId)
      FCreateDate=as.character(FCreateDate)
      FApproverId=as.character(FApproverId)
      FApproveDate=as.character(FApproveDate)
      data =data.frame(FBillNo,
                       FPrdOrgId,
                       FBillType,
                       FDate,
                       FMaterialId,
                       FBomId,
                       FProductType,
                       FReportType,
                       FUnitID,
                       FQuaQty,
                       FFailQty,
                       FReworkQty,
                       FScrapQty,
                       FReMadeQty,
                       FFinishQty,
                       FWorkshipId,
                       FMoBillNo,
                       FMoEntrySeq,
                       FCreatorId,
                       FCreateDate,
                       FApproverId,
                       FApproveDate,
                       stringsAsFactors = F
      )
      res = tryCatch({
         tsda::odbc_writeTable(conn = conn,table_name = 'rds_prd_MoRpt_mes',r_object = data,append = T)
         list(status ='true',data=FBillNo,error='')

      }, error = function(e){
         list(status ='false',data=FBillNo,error=as.character(e))

      })
   }else{
      #口令异常
      res = list(status ='false',data=FBillNo,error='FToken异常,请与管理员联系')
   }


   res


}

#* @post /morpt_del
prdMoRpt_del <- function(FToken,FBillNo="SCHB2022050002"

) {
   FToken = as.character(FToken)
   flag = tsda::odbc_checkToken(token =FToken )
   if(flag){
      #口令正常
      conn = tsda::odbc_getConn(token = FToken)
   FBillNo= as.character(FBillNo)
   sql <- paste0("select * from  rds_prd_MoRpt_mes
where FBillNo ='",FBillNo,"'")
   data = tsda::odbc_select(conn,sql)
   ncount = nrow(data)
   if(ncount >0){
      sql_del <- paste0("delete from  rds_prd_MoRpt_mes
where FBillNo ='",FBillNo,"'")
      tsda::odbc_update(conn,sql_del)
      list(status ='true',data=FBillNo,error='')
   }else{
      list(status ='false',data=FBillNo,error=paste0("生产汇报单不存在!"))
   }


   }else{
      #口令异常
      list(status ='false',data=FBillNo,error=paste0("FToken异常,请与管理员联系"))

   }
}


#* @post /moSchedule_query
moSchedule_query <- function(FToken,FBillNo="MO202204664"

) {
   FToken = as.character(FToken)
   flag = tsda::odbc_checkToken(token =FToken )
   if(flag){
      #口令正常
      conn = tsda::odbc_getConn(token = FToken)
      FBillNo= as.character(FBillNo)
      sql <- paste0("SELECT
       [FMachineNumber]
      ,[FPrdNumber]
      ,[FPrdName]
      ,[FMoldNumber]
      ,[FPackSpec]
      ,[FMoNumber]
      ,[FMoStatus]
      ,[FMoNote]
      ,[FMoQty]
      ,[FFinishQty]
      ,[FStockInQty]
      ,[FUnScheduleQty]
      ,[FScheduledQty]
      ,[FPlanDate]
      ,[FPlanQty]
  FROM [dbo].[rds_mfg_moSchedule]
  where FMoNumber ='",FBillNo,"'")
      data = tsda::odbc_select(conn,sql)
      ncount = nrow(data)
      if(ncount >0){

         list(status ='true',data=data,error='')
      }else{
         list(status ='false',data=FBillNo,error=paste0("生产订单排产信息不存在!"))
      }


   }else{
      #口令异常
      list(status ='false',data=FBillNo,error=paste0("FToken异常,请与管理员联系"))

   }
}
