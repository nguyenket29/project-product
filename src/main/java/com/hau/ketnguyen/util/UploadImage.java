package com.hau.ketnguyen.util;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/images/*")
public class UploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String imagePath;

	@Override
	public void init() throws ServletException {
		imagePath = "D:\\jee-2020-09\\project\\project-product\\src\\main\\webapp" + File.separator + "template/images";
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// get requested image by pathinfo
		String requestedImage = request.getPathInfo();

		if (null == requestedImage) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		// decode the file name
		File image = new File(imagePath, URLDecoder.decode(requestedImage, "UTF-8"));

		// check if file actually exists in file system
		if (!image.exists()) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		// get content by file name
		String contenType = getServletContext().getMimeType(image.getName());

		// check if file is actually an image(avoid down of other files by hackers)
		if (contenType == null || !contenType.startsWith("image")) {
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}

		response.reset();
		response.setContentType(contenType);
		response.setHeader("Content-Length", String.valueOf(image.length()));

		// Write image content to respone
		Files.copy(image.toPath(), response.getOutputStream());
	}
}
