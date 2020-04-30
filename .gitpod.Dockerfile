FROM gitpod/workspace-full

USER root
RUN echo 'deb http://apt.llvm.org/stretch/ llvm-toolchain-stretch-10 main' | tee /etc/apt/sources.list.d/llvm.list \
    && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - \
    && apt-get update \
    && apt-get install -y clang-10 llvm-10-dev lld-10 libclang-10-dev

USER gitpod