package ruan.com.demospring.cpu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/cpu")
public class CPUController {
	@Autowired CPUService cpuService;

	@GetMapping
	String gaussian() {
		return cpuService.gaussian();
	}

}
