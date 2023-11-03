package ruan.com.demospring.jvm.api;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ruan.com.demospring.jvm.core.service.JVMService;

@RestController
@RequestMapping("/jvm")
public class JVMController {
	@Autowired
	JVMService jvmService;

	@GetMapping("/memory")
	String memory() {
		return jvmService.memory();
	}

}
