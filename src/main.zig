// https://github.com/artemderkach/STM32F446RE-examples-zig/blob/main/021_led_registers/main.zig

const gpio = @import("gpio.zig");
const rcc = @import("rcc.zig");

pub fn main() !void {
    // TODO: enable clock access

    // Set PA5 to output
    gpio.GPIOA.MODER.MODER5 = gpio.MODE.Output;

    // Turn on PA5
    gpio.GPIOA.ODR.ODR5 = 1;
}
