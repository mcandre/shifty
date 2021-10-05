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

    char hash[24] = { 0 };

    uint8_t seed = 0;

    // char password[12] = { 0 };
    (void) strncpy(hash, argv[1], sizeof(hash));
    Vshifty *top = new Vshifty{"top"};
    (void) std::memcpy(top->hash, hash, sizeof(hash));
    top->eval();


    seed = top->seed;
    std::cerr << "Seed: " << seed << std::endl;

    // (void) strncpy(password, top->password, 11);
    // std::cout << password << std::endl;
    delete top;
    return EXIT_SUCCESS;
}
