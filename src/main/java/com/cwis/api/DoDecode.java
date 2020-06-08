package com.cwis.api;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DoDecode
 */
@WebServlet("/DoDecode")
public class DoDecode extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoDecode() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		String imagefile = request.getParameter("imagefile");
		File f = new File("/home/manish/Music/projectfile/imagefile/" + imagefile);
		String imagePath = f.getAbsolutePath();
		String key = request.getParameter("key");
		deStegano(key, imagePath);
		response.sendRedirect("menu.jsp");
	}

	private void deStegano(String key, String imagePath) {
		String hiddenText = Steganography.decode(imagePath);
		decrypt(hiddenText, key);
	}

	private void decrypt(String hiddenText, String key) {
		String originalText = AES.decrypt(hiddenText, key);
		String outputFileName = "hidden_text.txt";
		Steganography.saveTextToPath(originalText,
				new File("/home/manish/Music/projectfile/textfile/" + outputFileName));
		System.out.println("Successfully extracted text to: " + outputFileName);
	}
}



