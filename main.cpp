#include <cstdlib>
#include <cstring>
#include <iostream>

#include "Vshifty.h"
#include "Vshifty__Syms.h"

static void usage(const char *program) {
    std::cerr << "Usage: " << program << " <hash>" << std::endl;
}

int main(int argc, const char **argv) {
    Verilated::commandArgs(argc, argv);

    if (argc < 2) {
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    char hash_buf[24] = { 0 };
    char password_buf[11] = { 0 };
    char password[12] = { 0 };
    (void) strncpy(hash_buf, argv[1], sizeof(hash_buf));
    auto *top = new Vshifty{"top"};
    (void) std::memcpy(top->hash, hash_buf, sizeof(hash_buf));
    top->eval();
    (void) std::memcpy(password_buf, top->password, sizeof(password_buf));
    (void) strncpy(password, password_buf, 11);
    password[strlen(hash_buf)/2 - 1] = '\0';
    std::cout << password << std::endl;
    delete top;
    return EXIT_SUCCESS;
}
