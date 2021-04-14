target_include_directories(
    StringDecompression
    PRIVATE
        .
)

target_sources(
    StringDecompression
    PRIVATE
        main.cpp
        Token.cpp
)