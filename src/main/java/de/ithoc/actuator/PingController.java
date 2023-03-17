package de.ithoc.actuator;

import org.springframework.core.SpringVersion;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PingController {

    @GetMapping("/")
    public String root() {
        return SpringVersion.getVersion() + System.getProperty("line.separator");
    }

}
