package com.hellokoding.auth.model;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;

import java.sql.Timestamp;

@TableName("user_docs")
public class UserDoc {

    @TableField(exist = false)
    private long id;
    private int userId;
    private String docName;
    private byte[] docData;
    private Timestamp createdAt;

    @TableField(exist = false)
    private String docBase64;

    // Default constructor
    public UserDoc() {
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public byte[] getDocData() {
        return docData;
    }

    public void setDocData(byte[] docData) {
        this.docData = docData;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public String getDocBase64() {
        return docBase64;
    }

    public void setDocBase64(String docBase64) {
        this.docBase64 = docBase64;
    }
}
