package com.test.server;

import java.net.Inet4Address;
import java.net.InetAddress;
import java.util.Scanner;

public class NSLookup {

	public static void main(String[] args) {

		Scanner scan = null;
		String hostname = null;
		InetAddress[] inetAddresses = null;

		try {
			scan = new Scanner(System.in);

			while (true) {

				System.out.print(">");
				hostname = scan.nextLine();

				if (hostname.equals("exit")) {
					break;
				}

				inetAddresses = InetAddress.getAllByName(hostname);

				for (InetAddress addr : inetAddresses) {
					System.out.println(hostname + ":" + addr.getHostAddress());
				}

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (scan != null) {
				scan.close();
			}
		}

	}

}
