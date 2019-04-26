package com.sbsm.blog;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

//@RunWith(SpringRunner.class)
//@SpringBootTest
public class BlogApplicationTests {

	@Test
	public void contextLoads() {

		int num = 19;

		String content =
				"身体没有灵魂是死的，信心没有行为也是死的。\n" +
						" (雅各书 2:26 和合本)" +
						"";

		int lastIndexOf = content.lastIndexOf("(");
		String contentSub = content.substring(0, lastIndexOf);
		String titleSub = content.substring(lastIndexOf);
		titleSub = titleSub.replace('(',' ');
		titleSub = titleSub.replace(')',' ');
		titleSub = titleSub.trim();

		String t2 = "> <span id=\""+num+"-b\" style=\"color: red;\">**`"+titleSub+"`**[(附录)](#"+num+"-j)</span>：";
		System.out.println(t2);
		System.out.println();

		String html = "> <span id=\""+num+"-j\">["+titleSub+"](#"+num+"-b)</span>\n" +
				">> **<span style=\"color: red;\">"+contentSub+"</span>**";
		System.out.println(html);
	}

}
