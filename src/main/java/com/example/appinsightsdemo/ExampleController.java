package com.example.appinsightsdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.microsoft.applicationinsights.TelemetryClient;
import com.microsoft.applicationinsights.telemetry.EventTelemetry;
import com.microsoft.applicationinsights.telemetry.Telemetry;

@RestController
public class ExampleController {
    private final TelemetryClient  telemetryClient = new TelemetryClient();

    @GetMapping("/")
    public String root() {
        Telemetry telemetry = new EventTelemetry("Test" );
        //telemetry.getContext().getOperation().setParentId("ParentId");
        telemetry.getContext().getOperation().setId("your OperationId");
        telemetryClient.track(telemetry);

        return "OK";
    }
}
