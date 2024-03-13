package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 会议室
 *
 * @author 
 * @email
 */
@TableName("huiyishi")
public class HuiyishiEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public HuiyishiEntity() {

	}

	public HuiyishiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 会议室编号
     */
    @TableField(value = "huiyishi_uuid_number")

    private String huiyishiUuidNumber;


    /**
     * 会议室号
     */
    @TableField(value = "huiyishi_mingcheng")

    private String huiyishiMingcheng;


    /**
     * 会议室地址
     */
    @TableField(value = "huiyishi_address")

    private String huiyishiAddress;


    /**
     * 会议室类型
     */
    @TableField(value = "huiyishi_types")

    private Integer huiyishiTypes;


    /**
     * 会议室介绍
     */
    @TableField(value = "huiyishi_suqiu_content")

    private String huiyishiSuqiuContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "insert_time",fill = FieldFill.INSERT)

    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }
    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：会议室编号
	 */
    public String getHuiyishiUuidNumber() {
        return huiyishiUuidNumber;
    }
    /**
	 * 获取：会议室编号
	 */

    public void setHuiyishiUuidNumber(String huiyishiUuidNumber) {
        this.huiyishiUuidNumber = huiyishiUuidNumber;
    }
    /**
	 * 设置：会议室号
	 */
    public String getHuiyishiMingcheng() {
        return huiyishiMingcheng;
    }
    /**
	 * 获取：会议室号
	 */

    public void setHuiyishiMingcheng(String huiyishiMingcheng) {
        this.huiyishiMingcheng = huiyishiMingcheng;
    }
    /**
	 * 设置：会议室地址
	 */
    public String getHuiyishiAddress() {
        return huiyishiAddress;
    }
    /**
	 * 获取：会议室地址
	 */

    public void setHuiyishiAddress(String huiyishiAddress) {
        this.huiyishiAddress = huiyishiAddress;
    }
    /**
	 * 设置：会议室类型
	 */
    public Integer getHuiyishiTypes() {
        return huiyishiTypes;
    }
    /**
	 * 获取：会议室类型
	 */

    public void setHuiyishiTypes(Integer huiyishiTypes) {
        this.huiyishiTypes = huiyishiTypes;
    }
    /**
	 * 设置：会议室介绍
	 */
    public String getHuiyishiSuqiuContent() {
        return huiyishiSuqiuContent;
    }
    /**
	 * 获取：会议室介绍
	 */

    public void setHuiyishiSuqiuContent(String huiyishiSuqiuContent) {
        this.huiyishiSuqiuContent = huiyishiSuqiuContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }
    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }
    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Huiyishi{" +
            "id=" + id +
            ", huiyishiUuidNumber=" + huiyishiUuidNumber +
            ", huiyishiMingcheng=" + huiyishiMingcheng +
            ", huiyishiAddress=" + huiyishiAddress +
            ", huiyishiTypes=" + huiyishiTypes +
            ", huiyishiSuqiuContent=" + huiyishiSuqiuContent +
            ", insertTime=" + insertTime +
            ", createTime=" + createTime +
        "}";
    }
}
