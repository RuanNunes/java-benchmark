package ruan.com.demospring;


import java.text.DecimalFormat;
import java.time.Duration;
import java.time.Instant;
import java.util.stream.IntStream;

import org.apache.commons.math3.analysis.function.Gaussian;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jvm")
public class JVMController {

	@GetMapping("/cpu")
	String gaussian() {
		Instant start = Instant.now();
		Gaussian gaussian = new Gaussian(2, 20);
		double result = 0;
		int range = 1000;
		// result = IntStream.range(0, 1000)
		// 				.parallel()
		// 				.mapToDouble(i -> gaussian.value(i))
		// 				.sum();
		
		for (int i = 0; i < range; i++) {
			result += gaussian.value(i);
		}
		Instant end = Instant.now();
		Duration duration = Duration.between(start, end);
		double seconds = duration.toNanos() / 1_000_000_000.0;
		DecimalFormat df = new DecimalFormat("#.######");
		String formattedSeconds = df.format(seconds);
		return "Gaussian sum: " + result + ", time: " + formattedSeconds + " s";
	}
	
	@GetMapping("/memory")
	String memory() {
		int range = 100000000;
		int[] array = new int[range];
		for (int i = 0; i < array.length; i++) {
			array[i] = i;
		}
		return "Memory allocated: " + array.length * 4 / 1024 / 1024 + " MB";
	}

}
