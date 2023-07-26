#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");

static int __init LkmGPIInit(void) {
   pr_info("Hello, world!\n");
   return 0;
}

static void __exit LkmGPIExit(void) {
   pr_info("Goodbye, world!\n");
}

module_init(LkmGPIInit);
module_exit(LkmGPIExit);