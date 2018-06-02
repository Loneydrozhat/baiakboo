cmake_minimum_required(VERSION 2.8)

set(CMAKE_DISABLE_SOURCE_CHANGES ON)
set(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

project(tfs)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(cotire)

add_compile_options(-Wall -Werror -pipe -fvisibility=hidden)

if (CMAKE_COMPILER_IS_GNUCXX)
    add_compile_options(-fno-strict-aliasing)
endif()

include(FindCXX11)
include(FindLTO)

set(OPENSSL_INCLUDE_DIR "/usr/include/openssl-1.0")
set(OPENSSL_SSL_LIBRARY "/usr/lib/openssl-1.0/libssl.so" )
set(OPENSSL_CRYPTO_LIBRARY "/usr/lib/openssl-1.0/libcrypto.so" )
#set(_OPENSSL_INCLUDEDIR "/usr/include/openssl-1.0")
#set(_OPENSSL_LIBDIR "/usr/include/openssl-1.0")

# Find packages.
#find_package(GMP REQUIRED)
find_package(OpenSSL)
find_package(LibXml2  REQUIRED)
find_package(LuaJIT)
find_package(Threads)

# Options
option(__USE_MYSQL__ "Use MySQL" ON)
option(__USE_SQLITE__ "Use SQLite" ON)
option(__USE_PGSQL__ "Use PGSQL" ON)

option(__ENABLE_SERVER_DIAGNOSTIC__  "" ON)
option(__ROOT_PERMISSION__  "" ON)
option(__GROUND_CACHE__  "" ON)
option(__CONSOLE__ "" ON)
option(__WAR_SYSTEM__ "" ON)
#option(LIBXML_STATIC "" ON)

# Make sure at least one database driver is selected
if(NOT __USE_MYSQL__ AND NOT __USE_SQLITE__ AND NOT __USE_PGSQL__)
  message(FATAL_ERROR "At least one database driver has to be selected.")
endif()

option(USE_LUAJIT "Use LuaJIT" ${LUAJIT_FOUND})

if(USE_LUAJIT)
    find_package(LuaJIT REQUIRED)
    if(APPLE)
      set(CMAKE_EXE_LINKER_FLAGS "-pagezero_size 10000 -image_base 100000000")
    endif()
else()
    find_package(Lua)
endif()

find_package(Boost 1.53.0 COMPONENTS system iostreams REQUIRED)

add_subdirectory(src)
add_executable(tfs ${tfs_SRC})

#	DB
if(__ALLDB__ OR __USE_MYSQL__)
	add_definitions(-D__USE_MYSQL__)
	find_package(MySQL REQUIRED)	
	include_directories(${MYSQL_INCLUDE_DIR})
	target_link_libraries(tfs ${MYSQL_CLIENT_LIBS})
endif()

if(__ALLDB__ OR __USE_PGSQL__)	
	add_definitions(-D__USE_PGSQL__)
	find_package(PostgreSQL REQUIRED)
	include_directories(${POSTGRESQL_INCLUDE_DIR})
	target_link_libraries(tfs ${POSTGRESQL_LIBRARIES})	
endif()

if(__ALLDB__ OR __USE_SQLITE__)	
	add_definitions(-D__USE_SQLITE__)
	find_package(SQLite REQUIRED)
	include_directories(${SQLite_INCLUDE_DIR})
	target_link_libraries(tfs ${SQLite_LIBRARIES})	
endif()

include_directories(${LUA_INCLUDE_DIR} ${Boost_INCLUDE_DIRS} ${LibXML2_INCLUDE_DIR})
target_link_libraries(tfs ${LUA_LIBRARIES} ${Boost_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT} ${LibXML2_LIBRARIES})

set_target_properties(tfs PROPERTIES COTIRE_CXX_PREFIX_HEADER_INIT "src/otpch.h")
set_target_properties(tfs PROPERTIES COTIRE_ADD_UNITY_BUILD FALSE)
cotire(tfs)
