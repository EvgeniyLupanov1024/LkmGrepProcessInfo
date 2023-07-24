#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

int LkmGPIInit(void) {
   pr_info("Hello, world!\n");
   return 0;
}

void LkmGPIExit(void) {
   pr_info("Goodbye, world!\n");
}

module_init(LkmGPIInit);
module_exit(LkmGPIExit);