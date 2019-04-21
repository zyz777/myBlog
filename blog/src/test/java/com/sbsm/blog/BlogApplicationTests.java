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
		/*



	 */
		int num = 18;

		String content =
				"天使岂不都是服役的灵、奉差遣为那将要承受救恩的人效力吗？\n" +
						" (希伯来书 1:14 和合本)" +
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
