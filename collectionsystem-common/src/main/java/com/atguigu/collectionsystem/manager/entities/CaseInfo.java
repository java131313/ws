package com.atguigu.collectionsystem.manager.entities;

import java.math.BigDecimal;
import java.util.Date;

public class CaseInfo {
    private String id;

    private String caseCode;

    private Integer state;

    private String collecStateId;

    private Integer visitStateId;

    private String batchId;

    private Date caseDate;

    private Date caseBackdate;

    private Date endDate;

    private Integer version;

    private String cusNo;

    private String userid;

    private String accountNo;

    private String caseAppNo;

    private String caseFileNo;

    private String caseName;

    private String caseSex;

    private String caseIsMarriage;

    private Date caseBirthday;

    private Integer caseAge;

    private String provinceId;

    private String provinceName;

    private String cityId;

    private String cityName;

    private String districtId;

    private String districtName;

    private String areaId;

    private String areaName;

    private String bankAccount;

    private String caseHouseId;

    private String caseCard;

    private String caseNum;

    private String caseNumId;

    private String casePosition;

    private String caseDepartment;

    private String casePositionLevel;

    private String accountName;

    private String lendInstitution;

    private BigDecimal principal;

    private BigDecimal surplusPrincipal;

    private BigDecimal breach;

    private BigDecimal caseMoney;

    private BigDecimal caseLastMoney;

    private Date caseLastDate;

    private BigDecimal accountMoney;

    private String loanContract;

    private BigDecimal loanMoney;

    private BigDecimal loanRate;

    private Date loanStartdate;

    private Date loanEnddate;

    private BigDecimal contractMoney;

    private BigDecimal overdueMoney;

    private BigDecimal overduePrincipal;

    private BigDecimal overdueExpense;

    private String overdueAge;

    private BigDecimal overduePenalty;

    private BigDecimal overdueInterest;

    private Integer overdueDays;

    private Date overdueDate;

    private Integer overduePeriods;

    private Integer onceOverduePeriods;

    private BigDecimal overdueLoan;

    private BigDecimal overduePrincipalBalance;

    private BigDecimal overdueCompound;

    private String socialSecurityNo;

    private String socialCardNo;

    private BigDecimal agentRate;

    private BigDecimal entrustRate;

    private String creditId;

    private Integer stayPeriods;

    private BigDecimal monthRepayment;

    private BigDecimal lastRepayment;

    private BigDecimal stayPrincipal;

    private BigDecimal stayExpense;

    private BigDecimal stayInterest;

    private Integer bill;

    private Integer repaymentPeriods;

    private String commodity;

    private String companyName;

    private String companyPhone;

    private String companyAddress;

    private String companyZipcode;

    private String mobile1;

    private String mobile2;

    private String familyPhone;

    private String familyAddress;

    private String familyZipcode;

    private String domicile;

    private String markId;

    private String userName;

    private String isVerify;

    private Date verifyDate;

    private String repaymentType;

    private String protocolNo;

    private String loanArea;

    private BigDecimal actualLoanMoney;

    private BigDecimal interestMoney;

    private String penaltyReference;

    private String compoundInterestReference;

    private String quotaNo;

    private String quotaManager1;

    private String quotaManager2;

    private String managerPhone;

    private String collateralNo;

    private String collateralId;

    private String collateralName;

    private String collateralAddress;

    private String collateralEvalua;

    private Integer repayDate;

    private String totalConstruc;

    private String regione;

    private String subCenter;

    private String salesDep;

    private BigDecimal consultFee;

    private BigDecimal auditFee;

    private BigDecimal serviceFee;

    private BigDecimal adviserFee;

    private BigDecimal feeTotal;

    private Date initialRepay;

    private Integer duePeriods;

    private BigDecimal penaltyDays;

    private String debitBankCode;

    private String debitBankName;

    private String debitAccount;

    private String reliefPolicy;

    private String caseAssignedId;

    private String caseAssignId;

    private String caseAssignName;

    private Date caseAssignTime;

    private String createEmpId;

    private String modifyEmpId;

    private Date modifyTime;

    private Date createTime;

    private Byte status;

    private String orgId;

    private String orgName;

    private Date nextFollowTime;

    private String nextFollowState;

    private Date lastPhoneTime;

    private String isUpdate;

    private String handle;

    private BigDecimal inDerate;

    private BigDecimal outDerate;

    private Integer color;

    private String caseWarn;

    private Date startCardDate;

    private Date stopCardDate;

    private BigDecimal creditLimit;

    private Date policyExpire;

    private String collecType;

    private BigDecimal lateFee;

    private String domicileZipcode;

    private String billAddress;

    private String billZipcode;

    private String email;

    private String currency;

    private String repaymentTerm;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getCaseCode() {
        return caseCode;
    }

    public void setCaseCode(String caseCode) {
        this.caseCode = caseCode == null ? null : caseCode.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getCollecStateId() {
        return collecStateId;
    }

    public void setCollecStateId(String collecStateId) {
        this.collecStateId = collecStateId == null ? null : collecStateId.trim();
    }

    public Integer getVisitStateId() {
        return visitStateId;
    }

    public void setVisitStateId(Integer visitStateId) {
        this.visitStateId = visitStateId;
    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId == null ? null : batchId.trim();
    }

    public Date getCaseDate() {
        return caseDate;
    }

    public void setCaseDate(Date caseDate) {
        this.caseDate = caseDate;
    }

    public Date getCaseBackdate() {
        return caseBackdate;
    }

    public void setCaseBackdate(Date caseBackdate) {
        this.caseBackdate = caseBackdate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getCusNo() {
        return cusNo;
    }

    public void setCusNo(String cusNo) {
        this.cusNo = cusNo == null ? null : cusNo.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo == null ? null : accountNo.trim();
    }

    public String getCaseAppNo() {
        return caseAppNo;
    }

    public void setCaseAppNo(String caseAppNo) {
        this.caseAppNo = caseAppNo == null ? null : caseAppNo.trim();
    }

    public String getCaseFileNo() {
        return caseFileNo;
    }

    public void setCaseFileNo(String caseFileNo) {
        this.caseFileNo = caseFileNo == null ? null : caseFileNo.trim();
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName == null ? null : caseName.trim();
    }

    public String getCaseSex() {
        return caseSex;
    }

    public void setCaseSex(String caseSex) {
        this.caseSex = caseSex == null ? null : caseSex.trim();
    }

    public String getCaseIsMarriage() {
        return caseIsMarriage;
    }

    public void setCaseIsMarriage(String caseIsMarriage) {
        this.caseIsMarriage = caseIsMarriage == null ? null : caseIsMarriage.trim();
    }

    public Date getCaseBirthday() {
        return caseBirthday;
    }

    public void setCaseBirthday(Date caseBirthday) {
        this.caseBirthday = caseBirthday;
    }

    public Integer getCaseAge() {
        return caseAge;
    }

    public void setCaseAge(Integer caseAge) {
        this.caseAge = caseAge;
    }

    public String getProvinceId() {
        return provinceId;
    }

    public void setProvinceId(String provinceId) {
        this.provinceId = provinceId == null ? null : provinceId.trim();
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId == null ? null : cityId.trim();
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public String getDistrictId() {
        return districtId;
    }

    public void setDistrictId(String districtId) {
        this.districtId = districtId == null ? null : districtId.trim();
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName == null ? null : districtName.trim();
    }

    public String getAreaId() {
        return areaId;
    }

    public void setAreaId(String areaId) {
        this.areaId = areaId == null ? null : areaId.trim();
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName == null ? null : areaName.trim();
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount == null ? null : bankAccount.trim();
    }

    public String getCaseHouseId() {
        return caseHouseId;
    }

    public void setCaseHouseId(String caseHouseId) {
        this.caseHouseId = caseHouseId == null ? null : caseHouseId.trim();
    }

    public String getCaseCard() {
        return caseCard;
    }

    public void setCaseCard(String caseCard) {
        this.caseCard = caseCard == null ? null : caseCard.trim();
    }

    public String getCaseNum() {
        return caseNum;
    }

    public void setCaseNum(String caseNum) {
        this.caseNum = caseNum == null ? null : caseNum.trim();
    }

    public String getCaseNumId() {
        return caseNumId;
    }

    public void setCaseNumId(String caseNumId) {
        this.caseNumId = caseNumId == null ? null : caseNumId.trim();
    }

    public String getCasePosition() {
        return casePosition;
    }

    public void setCasePosition(String casePosition) {
        this.casePosition = casePosition == null ? null : casePosition.trim();
    }

    public String getCaseDepartment() {
        return caseDepartment;
    }

    public void setCaseDepartment(String caseDepartment) {
        this.caseDepartment = caseDepartment == null ? null : caseDepartment.trim();
    }

    public String getCasePositionLevel() {
        return casePositionLevel;
    }

    public void setCasePositionLevel(String casePositionLevel) {
        this.casePositionLevel = casePositionLevel == null ? null : casePositionLevel.trim();
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName == null ? null : accountName.trim();
    }

    public String getLendInstitution() {
        return lendInstitution;
    }

    public void setLendInstitution(String lendInstitution) {
        this.lendInstitution = lendInstitution == null ? null : lendInstitution.trim();
    }

    public BigDecimal getPrincipal() {
        return principal;
    }

    public void setPrincipal(BigDecimal principal) {
        this.principal = principal;
    }

    public BigDecimal getSurplusPrincipal() {
        return surplusPrincipal;
    }

    public void setSurplusPrincipal(BigDecimal surplusPrincipal) {
        this.surplusPrincipal = surplusPrincipal;
    }

    public BigDecimal getBreach() {
        return breach;
    }

    public void setBreach(BigDecimal breach) {
        this.breach = breach;
    }

    public BigDecimal getCaseMoney() {
        return caseMoney;
    }

    public void setCaseMoney(BigDecimal caseMoney) {
        this.caseMoney = caseMoney;
    }

    public BigDecimal getCaseLastMoney() {
        return caseLastMoney;
    }

    public void setCaseLastMoney(BigDecimal caseLastMoney) {
        this.caseLastMoney = caseLastMoney;
    }

    public Date getCaseLastDate() {
        return caseLastDate;
    }

    public void setCaseLastDate(Date caseLastDate) {
        this.caseLastDate = caseLastDate;
    }

    public BigDecimal getAccountMoney() {
        return accountMoney;
    }

    public void setAccountMoney(BigDecimal accountMoney) {
        this.accountMoney = accountMoney;
    }

    public String getLoanContract() {
        return loanContract;
    }

    public void setLoanContract(String loanContract) {
        this.loanContract = loanContract == null ? null : loanContract.trim();
    }

    public BigDecimal getLoanMoney() {
        return loanMoney;
    }

    public void setLoanMoney(BigDecimal loanMoney) {
        this.loanMoney = loanMoney;
    }

    public BigDecimal getLoanRate() {
        return loanRate;
    }

    public void setLoanRate(BigDecimal loanRate) {
        this.loanRate = loanRate;
    }

    public Date getLoanStartdate() {
        return loanStartdate;
    }

    public void setLoanStartdate(Date loanStartdate) {
        this.loanStartdate = loanStartdate;
    }

    public Date getLoanEnddate() {
        return loanEnddate;
    }

    public void setLoanEnddate(Date loanEnddate) {
        this.loanEnddate = loanEnddate;
    }

    public BigDecimal getContractMoney() {
        return contractMoney;
    }

    public void setContractMoney(BigDecimal contractMoney) {
        this.contractMoney = contractMoney;
    }

    public BigDecimal getOverdueMoney() {
        return overdueMoney;
    }

    public void setOverdueMoney(BigDecimal overdueMoney) {
        this.overdueMoney = overdueMoney;
    }

    public BigDecimal getOverduePrincipal() {
        return overduePrincipal;
    }

    public void setOverduePrincipal(BigDecimal overduePrincipal) {
        this.overduePrincipal = overduePrincipal;
    }

    public BigDecimal getOverdueExpense() {
        return overdueExpense;
    }

    public void setOverdueExpense(BigDecimal overdueExpense) {
        this.overdueExpense = overdueExpense;
    }

    public String getOverdueAge() {
        return overdueAge;
    }

    public void setOverdueAge(String overdueAge) {
        this.overdueAge = overdueAge == null ? null : overdueAge.trim();
    }

    public BigDecimal getOverduePenalty() {
        return overduePenalty;
    }

    public void setOverduePenalty(BigDecimal overduePenalty) {
        this.overduePenalty = overduePenalty;
    }

    public BigDecimal getOverdueInterest() {
        return overdueInterest;
    }

    public void setOverdueInterest(BigDecimal overdueInterest) {
        this.overdueInterest = overdueInterest;
    }

    public Integer getOverdueDays() {
        return overdueDays;
    }

    public void setOverdueDays(Integer overdueDays) {
        this.overdueDays = overdueDays;
    }

    public Date getOverdueDate() {
        return overdueDate;
    }

    public void setOverdueDate(Date overdueDate) {
        this.overdueDate = overdueDate;
    }

    public Integer getOverduePeriods() {
        return overduePeriods;
    }

    public void setOverduePeriods(Integer overduePeriods) {
        this.overduePeriods = overduePeriods;
    }

    public Integer getOnceOverduePeriods() {
        return onceOverduePeriods;
    }

    public void setOnceOverduePeriods(Integer onceOverduePeriods) {
        this.onceOverduePeriods = onceOverduePeriods;
    }

    public BigDecimal getOverdueLoan() {
        return overdueLoan;
    }

    public void setOverdueLoan(BigDecimal overdueLoan) {
        this.overdueLoan = overdueLoan;
    }

    public BigDecimal getOverduePrincipalBalance() {
        return overduePrincipalBalance;
    }

    public void setOverduePrincipalBalance(BigDecimal overduePrincipalBalance) {
        this.overduePrincipalBalance = overduePrincipalBalance;
    }

    public BigDecimal getOverdueCompound() {
        return overdueCompound;
    }

    public void setOverdueCompound(BigDecimal overdueCompound) {
        this.overdueCompound = overdueCompound;
    }

    public String getSocialSecurityNo() {
        return socialSecurityNo;
    }

    public void setSocialSecurityNo(String socialSecurityNo) {
        this.socialSecurityNo = socialSecurityNo == null ? null : socialSecurityNo.trim();
    }

    public String getSocialCardNo() {
        return socialCardNo;
    }

    public void setSocialCardNo(String socialCardNo) {
        this.socialCardNo = socialCardNo == null ? null : socialCardNo.trim();
    }

    public BigDecimal getAgentRate() {
        return agentRate;
    }

    public void setAgentRate(BigDecimal agentRate) {
        this.agentRate = agentRate;
    }

    public BigDecimal getEntrustRate() {
        return entrustRate;
    }

    public void setEntrustRate(BigDecimal entrustRate) {
        this.entrustRate = entrustRate;
    }

    public String getCreditId() {
        return creditId;
    }

    public void setCreditId(String creditId) {
        this.creditId = creditId == null ? null : creditId.trim();
    }

    public Integer getStayPeriods() {
        return stayPeriods;
    }

    public void setStayPeriods(Integer stayPeriods) {
        this.stayPeriods = stayPeriods;
    }

    public BigDecimal getMonthRepayment() {
        return monthRepayment;
    }

    public void setMonthRepayment(BigDecimal monthRepayment) {
        this.monthRepayment = monthRepayment;
    }

    public BigDecimal getLastRepayment() {
        return lastRepayment;
    }

    public void setLastRepayment(BigDecimal lastRepayment) {
        this.lastRepayment = lastRepayment;
    }

    public BigDecimal getStayPrincipal() {
        return stayPrincipal;
    }

    public void setStayPrincipal(BigDecimal stayPrincipal) {
        this.stayPrincipal = stayPrincipal;
    }

    public BigDecimal getStayExpense() {
        return stayExpense;
    }

    public void setStayExpense(BigDecimal stayExpense) {
        this.stayExpense = stayExpense;
    }

    public BigDecimal getStayInterest() {
        return stayInterest;
    }

    public void setStayInterest(BigDecimal stayInterest) {
        this.stayInterest = stayInterest;
    }

    public Integer getBill() {
        return bill;
    }

    public void setBill(Integer bill) {
        this.bill = bill;
    }

    public Integer getRepaymentPeriods() {
        return repaymentPeriods;
    }

    public void setRepaymentPeriods(Integer repaymentPeriods) {
        this.repaymentPeriods = repaymentPeriods;
    }

    public String getCommodity() {
        return commodity;
    }

    public void setCommodity(String commodity) {
        this.commodity = commodity == null ? null : commodity.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCompanyPhone() {
        return companyPhone;
    }

    public void setCompanyPhone(String companyPhone) {
        this.companyPhone = companyPhone == null ? null : companyPhone.trim();
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress == null ? null : companyAddress.trim();
    }

    public String getCompanyZipcode() {
        return companyZipcode;
    }

    public void setCompanyZipcode(String companyZipcode) {
        this.companyZipcode = companyZipcode == null ? null : companyZipcode.trim();
    }

    public String getMobile1() {
        return mobile1;
    }

    public void setMobile1(String mobile1) {
        this.mobile1 = mobile1 == null ? null : mobile1.trim();
    }

    public String getMobile2() {
        return mobile2;
    }

    public void setMobile2(String mobile2) {
        this.mobile2 = mobile2 == null ? null : mobile2.trim();
    }

    public String getFamilyPhone() {
        return familyPhone;
    }

    public void setFamilyPhone(String familyPhone) {
        this.familyPhone = familyPhone == null ? null : familyPhone.trim();
    }

    public String getFamilyAddress() {
        return familyAddress;
    }

    public void setFamilyAddress(String familyAddress) {
        this.familyAddress = familyAddress == null ? null : familyAddress.trim();
    }

    public String getFamilyZipcode() {
        return familyZipcode;
    }

    public void setFamilyZipcode(String familyZipcode) {
        this.familyZipcode = familyZipcode == null ? null : familyZipcode.trim();
    }

    public String getDomicile() {
        return domicile;
    }

    public void setDomicile(String domicile) {
        this.domicile = domicile == null ? null : domicile.trim();
    }

    public String getMarkId() {
        return markId;
    }

    public void setMarkId(String markId) {
        this.markId = markId == null ? null : markId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getIsVerify() {
        return isVerify;
    }

    public void setIsVerify(String isVerify) {
        this.isVerify = isVerify == null ? null : isVerify.trim();
    }

    public Date getVerifyDate() {
        return verifyDate;
    }

    public void setVerifyDate(Date verifyDate) {
        this.verifyDate = verifyDate;
    }

    public String getRepaymentType() {
        return repaymentType;
    }

    public void setRepaymentType(String repaymentType) {
        this.repaymentType = repaymentType == null ? null : repaymentType.trim();
    }

    public String getProtocolNo() {
        return protocolNo;
    }

    public void setProtocolNo(String protocolNo) {
        this.protocolNo = protocolNo == null ? null : protocolNo.trim();
    }

    public String getLoanArea() {
        return loanArea;
    }

    public void setLoanArea(String loanArea) {
        this.loanArea = loanArea == null ? null : loanArea.trim();
    }

    public BigDecimal getActualLoanMoney() {
        return actualLoanMoney;
    }

    public void setActualLoanMoney(BigDecimal actualLoanMoney) {
        this.actualLoanMoney = actualLoanMoney;
    }

    public BigDecimal getInterestMoney() {
        return interestMoney;
    }

    public void setInterestMoney(BigDecimal interestMoney) {
        this.interestMoney = interestMoney;
    }

    public String getPenaltyReference() {
        return penaltyReference;
    }

    public void setPenaltyReference(String penaltyReference) {
        this.penaltyReference = penaltyReference == null ? null : penaltyReference.trim();
    }

    public String getCompoundInterestReference() {
        return compoundInterestReference;
    }

    public void setCompoundInterestReference(String compoundInterestReference) {
        this.compoundInterestReference = compoundInterestReference == null ? null : compoundInterestReference.trim();
    }

    public String getQuotaNo() {
        return quotaNo;
    }

    public void setQuotaNo(String quotaNo) {
        this.quotaNo = quotaNo == null ? null : quotaNo.trim();
    }

    public String getQuotaManager1() {
        return quotaManager1;
    }

    public void setQuotaManager1(String quotaManager1) {
        this.quotaManager1 = quotaManager1 == null ? null : quotaManager1.trim();
    }

    public String getQuotaManager2() {
        return quotaManager2;
    }

    public void setQuotaManager2(String quotaManager2) {
        this.quotaManager2 = quotaManager2 == null ? null : quotaManager2.trim();
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone == null ? null : managerPhone.trim();
    }

    public String getCollateralNo() {
        return collateralNo;
    }

    public void setCollateralNo(String collateralNo) {
        this.collateralNo = collateralNo == null ? null : collateralNo.trim();
    }

    public String getCollateralId() {
        return collateralId;
    }

    public void setCollateralId(String collateralId) {
        this.collateralId = collateralId == null ? null : collateralId.trim();
    }

    public String getCollateralName() {
        return collateralName;
    }

    public void setCollateralName(String collateralName) {
        this.collateralName = collateralName == null ? null : collateralName.trim();
    }

    public String getCollateralAddress() {
        return collateralAddress;
    }

    public void setCollateralAddress(String collateralAddress) {
        this.collateralAddress = collateralAddress == null ? null : collateralAddress.trim();
    }

    public String getCollateralEvalua() {
        return collateralEvalua;
    }

    public void setCollateralEvalua(String collateralEvalua) {
        this.collateralEvalua = collateralEvalua == null ? null : collateralEvalua.trim();
    }

    public Integer getRepayDate() {
        return repayDate;
    }

    public void setRepayDate(Integer repayDate) {
        this.repayDate = repayDate;
    }

    public String getTotalConstruc() {
        return totalConstruc;
    }

    public void setTotalConstruc(String totalConstruc) {
        this.totalConstruc = totalConstruc == null ? null : totalConstruc.trim();
    }

    public String getRegione() {
        return regione;
    }

    public void setRegione(String regione) {
        this.regione = regione == null ? null : regione.trim();
    }

    public String getSubCenter() {
        return subCenter;
    }

    public void setSubCenter(String subCenter) {
        this.subCenter = subCenter == null ? null : subCenter.trim();
    }

    public String getSalesDep() {
        return salesDep;
    }

    public void setSalesDep(String salesDep) {
        this.salesDep = salesDep == null ? null : salesDep.trim();
    }

    public BigDecimal getConsultFee() {
        return consultFee;
    }

    public void setConsultFee(BigDecimal consultFee) {
        this.consultFee = consultFee;
    }

    public BigDecimal getAuditFee() {
        return auditFee;
    }

    public void setAuditFee(BigDecimal auditFee) {
        this.auditFee = auditFee;
    }

    public BigDecimal getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(BigDecimal serviceFee) {
        this.serviceFee = serviceFee;
    }

    public BigDecimal getAdviserFee() {
        return adviserFee;
    }

    public void setAdviserFee(BigDecimal adviserFee) {
        this.adviserFee = adviserFee;
    }

    public BigDecimal getFeeTotal() {
        return feeTotal;
    }

    public void setFeeTotal(BigDecimal feeTotal) {
        this.feeTotal = feeTotal;
    }

    public Date getInitialRepay() {
        return initialRepay;
    }

    public void setInitialRepay(Date initialRepay) {
        this.initialRepay = initialRepay;
    }

    public Integer getDuePeriods() {
        return duePeriods;
    }

    public void setDuePeriods(Integer duePeriods) {
        this.duePeriods = duePeriods;
    }

    public BigDecimal getPenaltyDays() {
        return penaltyDays;
    }

    public void setPenaltyDays(BigDecimal penaltyDays) {
        this.penaltyDays = penaltyDays;
    }

    public String getDebitBankCode() {
        return debitBankCode;
    }

    public void setDebitBankCode(String debitBankCode) {
        this.debitBankCode = debitBankCode == null ? null : debitBankCode.trim();
    }

    public String getDebitBankName() {
        return debitBankName;
    }

    public void setDebitBankName(String debitBankName) {
        this.debitBankName = debitBankName == null ? null : debitBankName.trim();
    }

    public String getDebitAccount() {
        return debitAccount;
    }

    public void setDebitAccount(String debitAccount) {
        this.debitAccount = debitAccount == null ? null : debitAccount.trim();
    }

    public String getReliefPolicy() {
        return reliefPolicy;
    }

    public void setReliefPolicy(String reliefPolicy) {
        this.reliefPolicy = reliefPolicy == null ? null : reliefPolicy.trim();
    }

    public String getCaseAssignedId() {
        return caseAssignedId;
    }

    public void setCaseAssignedId(String caseAssignedId) {
        this.caseAssignedId = caseAssignedId == null ? null : caseAssignedId.trim();
    }

    public String getCaseAssignId() {
        return caseAssignId;
    }

    public void setCaseAssignId(String caseAssignId) {
        this.caseAssignId = caseAssignId == null ? null : caseAssignId.trim();
    }

    public String getCaseAssignName() {
        return caseAssignName;
    }

    public void setCaseAssignName(String caseAssignName) {
        this.caseAssignName = caseAssignName == null ? null : caseAssignName.trim();
    }

    public Date getCaseAssignTime() {
        return caseAssignTime;
    }

    public void setCaseAssignTime(Date caseAssignTime) {
        this.caseAssignTime = caseAssignTime;
    }

    public String getCreateEmpId() {
        return createEmpId;
    }

    public void setCreateEmpId(String createEmpId) {
        this.createEmpId = createEmpId == null ? null : createEmpId.trim();
    }

    public String getModifyEmpId() {
        return modifyEmpId;
    }

    public void setModifyEmpId(String modifyEmpId) {
        this.modifyEmpId = modifyEmpId == null ? null : modifyEmpId.trim();
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId == null ? null : orgId.trim();
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName == null ? null : orgName.trim();
    }

    public Date getNextFollowTime() {
        return nextFollowTime;
    }

    public void setNextFollowTime(Date nextFollowTime) {
        this.nextFollowTime = nextFollowTime;
    }

    public String getNextFollowState() {
        return nextFollowState;
    }

    public void setNextFollowState(String nextFollowState) {
        this.nextFollowState = nextFollowState == null ? null : nextFollowState.trim();
    }

    public Date getLastPhoneTime() {
        return lastPhoneTime;
    }

    public void setLastPhoneTime(Date lastPhoneTime) {
        this.lastPhoneTime = lastPhoneTime;
    }

    public String getIsUpdate() {
        return isUpdate;
    }

    public void setIsUpdate(String isUpdate) {
        this.isUpdate = isUpdate == null ? null : isUpdate.trim();
    }

    public String getHandle() {
        return handle;
    }

    public void setHandle(String handle) {
        this.handle = handle == null ? null : handle.trim();
    }

    public BigDecimal getInDerate() {
        return inDerate;
    }

    public void setInDerate(BigDecimal inDerate) {
        this.inDerate = inDerate;
    }

    public BigDecimal getOutDerate() {
        return outDerate;
    }

    public void setOutDerate(BigDecimal outDerate) {
        this.outDerate = outDerate;
    }

    public Integer getColor() {
        return color;
    }

    public void setColor(Integer color) {
        this.color = color;
    }

    public String getCaseWarn() {
        return caseWarn;
    }

    public void setCaseWarn(String caseWarn) {
        this.caseWarn = caseWarn == null ? null : caseWarn.trim();
    }

    public Date getStartCardDate() {
        return startCardDate;
    }

    public void setStartCardDate(Date startCardDate) {
        this.startCardDate = startCardDate;
    }

    public Date getStopCardDate() {
        return stopCardDate;
    }

    public void setStopCardDate(Date stopCardDate) {
        this.stopCardDate = stopCardDate;
    }

    public BigDecimal getCreditLimit() {
        return creditLimit;
    }

    public void setCreditLimit(BigDecimal creditLimit) {
        this.creditLimit = creditLimit;
    }

    public Date getPolicyExpire() {
        return policyExpire;
    }

    public void setPolicyExpire(Date policyExpire) {
        this.policyExpire = policyExpire;
    }

    public String getCollecType() {
        return collecType;
    }

    public void setCollecType(String collecType) {
        this.collecType = collecType == null ? null : collecType.trim();
    }

    public BigDecimal getLateFee() {
        return lateFee;
    }

    public void setLateFee(BigDecimal lateFee) {
        this.lateFee = lateFee;
    }

    public String getDomicileZipcode() {
        return domicileZipcode;
    }

    public void setDomicileZipcode(String domicileZipcode) {
        this.domicileZipcode = domicileZipcode == null ? null : domicileZipcode.trim();
    }

    public String getBillAddress() {
        return billAddress;
    }

    public void setBillAddress(String billAddress) {
        this.billAddress = billAddress == null ? null : billAddress.trim();
    }

    public String getBillZipcode() {
        return billZipcode;
    }

    public void setBillZipcode(String billZipcode) {
        this.billZipcode = billZipcode == null ? null : billZipcode.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getRepaymentTerm() {
        return repaymentTerm;
    }

    public void setRepaymentTerm(String repaymentTerm) {
        this.repaymentTerm = repaymentTerm == null ? null : repaymentTerm.trim();
    }
}