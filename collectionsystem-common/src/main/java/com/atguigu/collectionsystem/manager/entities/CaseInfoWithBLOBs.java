package com.atguigu.collectionsystem.manager.entities;

public class CaseInfoWithBLOBs extends CaseInfo {
    private String oldCollecRecord;

    private String remainHistory;

    private String remark1;

    private String remark2;

    private String collecRemark;

    private String cusIntroduc;

    private String hisRemark;

    public String getOldCollecRecord() {
        return oldCollecRecord;
    }

    public void setOldCollecRecord(String oldCollecRecord) {
        this.oldCollecRecord = oldCollecRecord == null ? null : oldCollecRecord.trim();
    }

    public String getRemainHistory() {
        return remainHistory;
    }

    public void setRemainHistory(String remainHistory) {
        this.remainHistory = remainHistory == null ? null : remainHistory.trim();
    }

    public String getRemark1() {
        return remark1;
    }

    public void setRemark1(String remark1) {
        this.remark1 = remark1 == null ? null : remark1.trim();
    }

    public String getRemark2() {
        return remark2;
    }

    public void setRemark2(String remark2) {
        this.remark2 = remark2 == null ? null : remark2.trim();
    }

    public String getCollecRemark() {
        return collecRemark;
    }

    public void setCollecRemark(String collecRemark) {
        this.collecRemark = collecRemark == null ? null : collecRemark.trim();
    }

    public String getCusIntroduc() {
        return cusIntroduc;
    }

    public void setCusIntroduc(String cusIntroduc) {
        this.cusIntroduc = cusIntroduc == null ? null : cusIntroduc.trim();
    }

    public String getHisRemark() {
        return hisRemark;
    }

    public void setHisRemark(String hisRemark) {
        this.hisRemark = hisRemark == null ? null : hisRemark.trim();
    }
}