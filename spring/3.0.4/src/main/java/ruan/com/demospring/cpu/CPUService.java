package ruan.com.demospring.cpu;

import org.apache.commons.math3.analysis.function.Gaussian;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.time.Duration;
import java.time.Instant;

@Service
public class CPUService {
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
}
