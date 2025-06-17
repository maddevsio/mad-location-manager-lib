cmake_minimum_required(VERSION 3.16)

project(mlm_filter)            # this sets the project name

# Find Doxygen package
find_package(Doxygen) 

if(DOXYGEN_FOUND)
    # Set Doxygen configuration variables
    set(DOXYGEN_PROJECT_NAME "mad-location-manager-lib")
    set(DOXYGEN_PROJECT_NUMBER "1.0")
    set(DOXYGEN_PROJECT_BRIEF "Library for fusing GPS and ENU accelerometer data")
    set(DOXYGEN_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/docs")
    set(DOXYGEN_INPUT "${CMAKE_CURRENT_SOURCE_DIR}")  # for some reason does not work
    set(DOXYGEN_FILE_PATTERNS "*.h;*.hpp;*.c;*.cpp")
    set(DOXYGEN_EXCLUDE_PATTERNS "*/external/*;*/tests/*")
    set(DOXYGEN_RECURSIVE YES)
    set(DOXYGEN_EXTRACT_ALL YES)
    set(DOXYGEN_EXTRACT_PRIVATE YES)
    set(DOXYGEN_EXTRACT_STATIC YES)
    set(DOXYGEN_GENERATE_HTML YES)
    set(DOXYGEN_GENERATE_LATEX NO)
    set(DOXYGEN_GENERATE_XML NO)
    set(DOXYGEN_HTML_OUTPUT "html")
    set(DOXYGEN_USE_MDFILE_AS_MAINPAGE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
    set(DOXYGEN_QUIET NO)
    set(DOXYGEN_WARNINGS YES)
    set(DOXYGEN_WARN_IF_UNDOCUMENTED YES)
    set(DOXYGEN_WARN_IF_DOC_ERROR YES)
    set(DOXYGEN_WARN_NO_PARAMDOC YES)
    
    # Optional: Enable diagrams and graphs
    set(DOXYGEN_HAVE_DOT NO)  # Set to YES if you have Graphviz installed
    set(DOXYGEN_CALL_GRAPH YES)
    set(DOXYGEN_CALLER_GRAPH YES)
    set(DOXYGEN_CLASS_DIAGRAMS YES)
    
    # Create the documentation target
    doxygen_add_docs(
        docs
        ${CMAKE_CURRENT_SOURCE_DIR}
        COMMENT "Generating API documentation with Doxygen"
    )
    message(STATUS "Doxygen found. Documentation can be built with 'make docs' or 'make docs_manual'")
else()
    message(WARNING "Doxygen not found. Documentation cannot be generated.")
endif()

