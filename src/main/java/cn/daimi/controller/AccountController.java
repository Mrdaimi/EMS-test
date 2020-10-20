package cn.daimi.controller;

import cn.daimi.dao.IMemberDao;
import cn.daimi.domain.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*账户web层(控制页面跳转)*/
@Controller
public class AccountController {
    @Autowired
    private IMemberDao iMemberDao;
    @RequestMapping(value = "/apply",method = {RequestMethod.GET})
    public String apply(Member member){
        iMemberDao.savaMember(member.getPname(),member.getProfession(),member.getGender(),member.getBj(),member.getTln(),member.getQqn());
        return  "sucess";
    }
}
