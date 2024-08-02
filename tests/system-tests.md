# Test Results

| **Test** | **Details** | **Expected Result** | **Actual Result** |
| --- | --- | --- | --- |
| **Test 1** | - 3 red LEDs<br> - 3 blue LEDs<br> - 1 green LED | system allocates all three tasks | system allocated all three tasks, LEDs blink according to the tasks. |
| **Test 2** | - 2 red LEDs<br> - 3 blue LEDs<br> - 1 green LED<br> - 1 open IO | system allocates tasks 2 and 3, turns unused peripherals off | system allocated tasks 2 and 3, LEDs blink according to the tasks, 1 red LED off. |
| **Test 3** | - 2 red LEDs<br> - 2 blue LEDs<br> - 1 green LED<br> - 1 open IO<br> - 1 motor | system allocates task 2, turns unused peripherals off | system allocated task 2, LEDs blink according to the tasks, 1 red LED off, 1 blue LED off, motor off. |
