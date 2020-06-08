package com.cwis.api;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.nio.ByteBuffer;
import java.util.Scanner;

import javax.imageio.ImageIO;

import com.cwis.utils.Basemethods;

public class Steganography {
	private static int bytesForTextLengthData = 4;
	private static int bitsInByte = 8;

	// Encode

	public static String encodeByText(String imagePath, String text, String path, String imageName) {
		BufferedImage originalImage = getImageFromPath(imagePath);
		BufferedImage imageInUserSpace = getImageInUserSpace(originalImage);

		byte imageInBytes[] = getBytesFromImage(imageInUserSpace);
		byte textInBytes[] = text.getBytes();
		byte textLengthInBytes[] = getBytesFromInt(textInBytes.length);
		try {
			encodeImage(imageInBytes, textLengthInBytes, 0);
			encodeImage(imageInBytes, textInBytes, bytesForTextLengthData * bitsInByte);
		} catch (Exception exception) {
			System.out.println("Couldn't hide text in image. Error: " + exception);
			return "";
		}

		String fileName = imageName;
		int position = fileName.lastIndexOf(".");
		if (position > 0) {
			fileName = fileName.substring(0, position);
		}
		fileName = fileName + ".png";
		System.out.println("Successfully encoded text in: " + fileName);
		String rootPath = path + "documents//" + Basemethods.getUser() + "//encrypted_files//";
		File f = new File(rootPath + fileName);
		f.mkdirs();
		saveImageToPath(imageInUserSpace, f, "png");
		return rootPath + fileName;
	}

	public static String encodeByFilePath(String imagePath, String textPath, String path, String imageName) {
		BufferedImage originalImage = getImageFromPath(imagePath);
		BufferedImage imageInUserSpace = getImageInUserSpace(originalImage);
		String text = getTextFromTextFile(textPath);

		byte imageInBytes[] = getBytesFromImage(imageInUserSpace);
		byte textInBytes[] = text.getBytes();
		byte textLengthInBytes[] = getBytesFromInt(textInBytes.length);
		try {
			encodeImage(imageInBytes, textLengthInBytes, 0);
			encodeImage(imageInBytes, textInBytes, bytesForTextLengthData * bitsInByte);
		} catch (Exception exception) {
			System.out.println("Couldn't hide text in image. Error: " + exception);
			return null;
		}

		String fileName = imageName;
		int position = fileName.lastIndexOf(".");
		if (position > 0) {
			fileName = fileName.substring(0, position);
		}
		fileName = fileName + ".png";
		System.out.println("Successfully encoded text in: " + fileName);
		String rootPath = path + "documents//" + Basemethods.getUser() + "//encrypted_files//";
		File f = new File(rootPath + fileName);
		f.mkdirs();
		saveImageToPath(imageInUserSpace, f, "png");
		return rootPath + fileName;
	}

	public static byte[] encodeImage(byte[] image, byte[] addition, int offset) {
		if (addition.length + offset > image.length) {
			throw new IllegalArgumentException("Image file is not long enough to store provided text");
		}
		for (int i = 0; i < addition.length; i++) {
			int additionByte = addition[i];
			for (int bit = bitsInByte - 1; bit >= 0; --bit, offset++) {
				int b = (additionByte >>> bit) & 0x1;
				image[offset] = (byte) ((image[offset] & 0xFE) | b);
			}
		}
		return image;
	}

	// Decode

	public static String decode(String imagePath) {
		byte[] decodedHiddenText;
		try {
			BufferedImage imageFromPath = getImageFromPath(imagePath);
			BufferedImage imageInUserSpace = getImageInUserSpace(imageFromPath);
			byte imageInBytes[] = getBytesFromImage(imageInUserSpace);
			decodedHiddenText = decodeImage(imageInBytes);
			String hiddenText = new String(decodedHiddenText);
			return hiddenText;
		} catch (Exception exception) {
			System.out.println("No hidden message. Error: " + exception);
			return "";
		}
	}

	public static byte[] decodeImage(byte[] image) {
		int length = 0;
		int offset = bytesForTextLengthData * bitsInByte;

		for (int i = 0; i < offset; i++) {
			length = (length << 1) | (image[i] & 0x1);
		}

		byte[] result = new byte[length];

		for (int b = 0; b < result.length; b++) {
			for (int i = 0; i < bitsInByte; i++, offset++) {
				result[b] = (byte) ((result[b] << 1) | (image[offset] & 0x1));
			}
		}
		return result;
	}

	// File I/O methods

	public static void saveImageToPath(BufferedImage image, File file, String extension) {
		try {
			file.delete();
			ImageIO.write(image, extension, file);
		} catch (Exception exception) {
			System.out.println("Image file could not be saved. Error: " + exception);
		}
	}

	public static void saveTextToPath(String text, File file) {
		try {
			if (file.exists() == false) {
				file.createNewFile();
			}
			FileWriter fileWriter = new FileWriter(file.getAbsoluteFile());
			BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
			bufferedWriter.write(text);
			bufferedWriter.close();
		} catch (Exception exception) {
			System.out.println("Couldn't write text to file: " + exception);
		}
	}

	public static BufferedImage getImageFromPath(String path) {
		BufferedImage image = null;
		File file = new File(path);
		try {
			image = ImageIO.read(file);
		} catch (Exception exception) {
			System.out.println("Input image cannot be read. Error: " + exception);
		}
		return image;
	}

	public static String getTextFromTextFile(String textFile) {
		String text = "";
		try {
			Scanner scanner = new Scanner(new File(textFile));
			text = scanner.useDelimiter("\\A").next();
			scanner.close();
		} catch (Exception exception) {
			System.out.println("Couldn't read text from file. Error: " + exception);
		}
		return text;
	}

	// Helpers

	public static BufferedImage getImageInUserSpace(BufferedImage image) {
		BufferedImage imageInUserSpace = new BufferedImage(image.getWidth(), image.getHeight(),
				BufferedImage.TYPE_3BYTE_BGR);
		Graphics2D graphics = imageInUserSpace.createGraphics();
		graphics.drawRenderedImage(image, null);
		graphics.dispose();
		return imageInUserSpace;
	}

	public static byte[] getBytesFromImage(BufferedImage image) {
		WritableRaster raster = image.getRaster();
		DataBufferByte buffer = (DataBufferByte) raster.getDataBuffer();
		return buffer.getData();
	}

	public static byte[] getBytesFromInt(int integer) {
		return ByteBuffer.allocate(bytesForTextLengthData).putInt(integer).array();
	}

}
