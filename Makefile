CXXFLAGS = -Wall -Wextra

GCC_CXXFLAGS = -DMESSAGE='"Compiled with GCC"'
CLANG_CXXFLAGS = -DMESSAGE='"Compiled with Clang"'
UNKNOWN_CXXFLAGS = -DMESSAGE='"Compiled with an unknown compiler"'

ifeq ($(CXX),g++)
  CXXFLAGS += $(GCC_CXXFLAGS)
else ifeq ($(CXX),clang++)
  CXXFLAGS += $(CLANG_CXXFLAGS)
else
  CXXFLAGS += $(UNKNOWN_CXXFLAGS)
endif

SRC_DIR   = src
BUILD_DIR = build

vpath %.cpp $(sort $(dir $(SRC_DIR)))

.PHONY: hello clean

hello: 
	@echo " mkdir -p $(BUILD_DIR)"
	@mkdir -p $(BUILD_DIR)
	@echo " $(CXX) $(CXXFLAGS) -o $(BUILD_DIR)/hello $(SRC_DIR)/hello.cpp"
	$(CXX) $(CXXFLAGS) -o $(BUILD_DIR)/hello $(SRC_DIR)/hello.cpp

clean:
	@rm -rf $(BUILD_DIR) 

info:
	@echo " Info..."
	@echo " SRC_DIR = $(SRC_DIR)"
	@echo " BUILD_DIR = $(BUILD_DIR)"
	@echo " CXXFLAGS = $(CXXFLAGS)"
	@echo " CXX = $(CXX)"
	

# Travis appears to be passing with this Makefile.
# Happy with it, might make a more complex C++ file but for now this shows multi arch perfectly.
