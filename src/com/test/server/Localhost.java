package com.test.server;

import java.net.InetAddress;

public class Localhost {

	public static void main(String[] args) {
		try {
			
			InetAddress inetAddress = InetAddress.getLocalHost();
			
			System.out.println(inetAddress.getHostName()+":"+inetAddress.getHostAddress());

			byte[] addresses = inetAddress.getAddress();
			
			for(byte addr : addresses) {
				System.out.print(addr & 0x000000ff);
				System.out.print(".");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
