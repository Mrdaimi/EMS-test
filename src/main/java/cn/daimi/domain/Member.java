package cn.daimi.domain;

import java.io.Serializable;

public class Member implements Serializable {
    private String pname;
    private String profession;
    private String gender;
    private String bj;
    private String tln;
    private String qqn;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBj() {
        return bj;
    }

    public void setBj(String bj) {
        this.bj = bj;
    }

    public String getTln() {
        return tln;
    }

    public void setTln(String tln) {
        this.tln = tln;
    }

    public String getQqn() {
        return qqn;
    }

    public void setQqn(String qqn) {
        this.qqn = qqn;
    }

    @Override
    public String toString() {
        return "Member{" +
                "pname='" + pname + '\'' +
                ", profession='" + profession + '\'' +
                ", gender='" + gender + '\'' +
                ", bj='" + bj + '\'' +
                ", tln='" + tln + '\'' +
                ", qqn='" + qqn + '\'' +
                '}';
    }
}
