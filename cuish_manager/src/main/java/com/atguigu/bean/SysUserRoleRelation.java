package com.atguigu.bean;

public class SysUserRoleRelation {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user_role_relation.user_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    private String userId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_user_role_relation.role_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    private String roleId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user_role_relation.user_id
     *
     * @return the value of sys_user_role_relation.user_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    public String getUserId() {
        return userId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user_role_relation.user_id
     *
     * @param userId the value for sys_user_role_relation.user_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_user_role_relation.role_id
     *
     * @return the value of sys_user_role_relation.role_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    public String getRoleId() {
        return roleId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_user_role_relation.role_id
     *
     * @param roleId the value for sys_user_role_relation.role_id
     *
     * @mbg.generated Sat Apr 21 00:31:36 CST 2018
     */
    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }
}