package website;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wx.website.util.FristRedis;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext.xml"})
public class RedisTestTest {
	
	@Autowired
	private FristRedis redisTest;
	
	@Test
	public void test(){
		
		redisTest.test();
		redisTest.fristPool();
	}
}
