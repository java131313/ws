package com.atguigu.collectionsystem.manager.entities;

public class CaseBatchWithBLOBs extends CaseBatch {
    private String remark;

    private String batchLog;

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getBatchLog() {
        return batchLog;
    }

    public void setBatchLog(String batchLog) {
        this.batchLog = batchLog == null ? null : batchLog.trim();
    }
}