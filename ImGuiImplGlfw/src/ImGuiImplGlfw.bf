using System;

namespace ImGui
{
    public static class ImGuiImplGlfw
    {
        private typealias GLFWwindow = glfw_beef.GlfwWindow;
        private typealias GLFWmonitor = glfw_beef.GlfwMonitor;
    
        [LinkName("ImGui_ImplGlfw_CharCallback")]
        private static extern void CharCallbackImpl(GLFWwindow* window, uint32 c);
        public static void CharCallback(GLFWwindow* window, uint32 c) => CharCallbackImpl(window, c);
        
        [LinkName("ImGui_ImplGlfw_CursorEnterCallback")]
        private static extern void CursorEnterCallbackImpl(GLFWwindow* window, int32 entered);
        public static void CursorEnterCallback(GLFWwindow* window, int32 entered) => CursorEnterCallbackImpl(window, entered);
        
        [LinkName("ImGui_ImplGlfw_InitForOpenGL")]
        private static extern bool InitForOpenGLImpl(GLFWwindow* window, bool install_callbacks);
        public static bool InitForOpenGL(GLFWwindow* window, bool install_callbacks) => InitForOpenGLImpl(window, install_callbacks);
        
        [LinkName("ImGui_ImplGlfw_InitForOther")]
        private static extern bool InitForOtherImpl(GLFWwindow* window, bool install_callbacks);
        public static bool InitForOther(GLFWwindow* window, bool install_callbacks) => InitForOtherImpl(window, install_callbacks);
        
        [LinkName("ImGui_ImplGlfw_InitForVulkan")]
        private static extern bool InitForVulkanImpl(GLFWwindow* window, bool install_callbacks);
        public static bool InitForVulkan(GLFWwindow* window, bool install_callbacks) => InitForVulkanImpl(window, install_callbacks);
        
        [LinkName("ImGui_ImplGlfw_KeyCallback")]
        private static extern void KeyCallbackImpl(GLFWwindow* window, int32 key, int32 scancode, int32 action, int32 mods);
        public static void KeyCallback(GLFWwindow* window, int32 key, int32 scancode, int32 action, int32 mods) => KeyCallbackImpl(window, key, scancode, action, mods);
        
        [LinkName("ImGui_ImplGlfw_MonitorCallback")]
        private static extern void MonitorCallbackImpl(GLFWmonitor* monitor, int32 event);
        public static void MonitorCallback(GLFWmonitor* monitor, int32 event) => MonitorCallbackImpl(monitor, event);
        
        [LinkName("ImGui_ImplGlfw_MouseButtonCallback")]
        private static extern void MouseButtonCallbackImpl(GLFWwindow* window, int32 button, int32 action, int32 mods);
        public static void MouseButtonCallback(GLFWwindow* window, int32 button, int32 action, int32 mods) => MouseButtonCallbackImpl(window, button, action, mods);
        
        [LinkName("ImGui_ImplGlfw_NewFrame")]
        private static extern void NewFrameImpl();
        public static void NewFrame() => NewFrameImpl();
        
        [LinkName("ImGui_ImplGlfw_ScrollCallback")]
        private static extern void ScrollCallbackImpl(GLFWwindow* window, double xoffset, double yoffset);
        public static void ScrollCallback(GLFWwindow* window, double xoffset, double yoffset) => ScrollCallbackImpl(window, xoffset, yoffset);
        
        [LinkName("ImGui_ImplGlfw_Shutdown")]
        private static extern void ShutdownImpl();
        public static void Shutdown() => ShutdownImpl();
        
        [LinkName("ImGui_ImplGlfw_WindowFocusCallback")]
        private static extern void WindowFocusCallbackImpl(GLFWwindow* window, int32 focused);
        public static void WindowFocusCallback(GLFWwindow* window, int32 focused) => WindowFocusCallbackImpl(window, focused);
    }
}