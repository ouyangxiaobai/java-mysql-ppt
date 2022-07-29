package util;

import util.threadlocal.LocalRequestContextHolder;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;

/**
 * 过滤器，设置设置字符集为 utf-8
 */
public class SetChar extends HttpServlet implements Filter {
	private FilterConfig filterConfig;

	// Handle the passed-in FilterConfig
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	/**
	 * 过滤器执行
	 * @param request
	 * @param response
	 * @param filterChain
	 */
	// Process the request/response pair
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) {
		try {
			//request.setCharacterEncoding("gb2312");

			HttpServletRequest req = (HttpServletRequest) request;
			LocalRequestContextHolder.setLocalRequestContext(filterConfig.getServletContext(),req,(HttpServletResponse) response );
			if (req.getMethod().equalsIgnoreCase("get")) {
	            this.encoding(req);
	        }

			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			filterChain.doFilter(request, response);
		} catch (ServletException sx) {
			filterConfig.getServletContext().log(sx.getMessage());
		} catch (IOException iox) {
			filterConfig.getServletContext().log(iox.getMessage());
		}
	}

	private void encoding(HttpServletRequest request) {
		Iterator iter = request.getParameterMap().values().iterator();
		while (iter.hasNext()) {
			String[] parames = (String[]) iter.next();
			for (int i = 0; i < parames.length; i++) {
				try {
					parames[i] = new String(parames[i].getBytes("iso8859-1"),
							"utf-8");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}


	// Clean up resources
	public void destroy() {
	}
}
