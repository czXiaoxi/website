package com.wx.website.util;

import org.springframework.stereotype.Component;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

@Component
public class FristRedis {
	public void test(){
		Jedis jedis = new Jedis("localhost");
		jedis.set("wangxi", "test1");
		String result = jedis.get("wangxi");
		System.out.println("result:"+ result);
	}
	
	public void fristPool(){
		JedisPool jedisPool = new JedisPool(new JedisPoolConfig(), "localhost");
		Jedis jedis = jedisPool.getResource();
		String jedisResult = jedis.set("joker", "joker");
		System.out.println("jedispool:"+jedisResult );
	}
}
