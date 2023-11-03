package ruan.com.demospring.jvm.core.service;

import org.springframework.stereotype.Service;

@Service
public class JVMService {
    public String memory() {
        int range = 100000000;
        int[] array = new int[range];
        for (int i = 0; i < array.length; i++) {
            array[i] = i;
        }
        return "Memory allocated: " + array.length * 4 / 1024 / 1024 + " MB";
    }
}
