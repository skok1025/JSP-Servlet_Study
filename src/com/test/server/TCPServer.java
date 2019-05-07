package com.test.server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;

public class TCPServer {

	public static void main(String[] args) {

		ServerSocket serverSocket = null;

		try {
			serverSocket = new ServerSocket();

			serverSocket.bind(new InetSocketAddress("0.0.0.0", 5000));
			System.out.println(InetAddress.getLocalHost().getHostName() + " 채팅창");

			Socket socket = serverSocket.accept();

			InetSocketAddress inetRemoteSocketAddress = (InetSocketAddress) socket.getRemoteSocketAddress();

			String remoteHostAddress = inetRemoteSocketAddress.getAddress().getHostAddress();
			int remotePort = inetRemoteSocketAddress.getPort();
			System.out.println("[server] connected by client[" + remoteHostAddress + ":" + remotePort + "]");

			InputStream is = socket.getInputStream();
			OutputStream os = socket.getOutputStream();

			while (true) {
				byte[] buffer = new byte[256];
				int readByteCount = is.read(buffer);
				if (readByteCount == -1) {
					// 클라이언트가 정상종료한 경우
					System.out.println("[server] closed by client");
					break;
				}

				String data = new String(buffer, 0, readByteCount, "utf-8");
				System.out.println("[server] received:" + data);

				os.write(data.getBytes("utf-8"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (serverSocket != null && !serverSocket.isClosed())
					serverSocket.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
