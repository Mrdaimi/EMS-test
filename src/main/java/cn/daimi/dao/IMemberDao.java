package cn.daimi.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IMemberDao {
    //将报名人员的信息添加到数据库
    @Insert("insert into `member`(pname,profession,gender,bj,tln,qqn) values(#{pname},#{profession},#{gender},#{bj},#{tln},#{qqn})")
    public void savaMember(@Param("pname") String pname, @Param("profession") String profession,@Param("gender") String gender,
                            @Param("bj") String bj,@Param("tln") String tln,@Param("qqn") String qqn);
}
