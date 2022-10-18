CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VulkanTest: main.cc
	g++ $(CFLAGS) -o VulkanTest main.cc $(LDFLAGS)
