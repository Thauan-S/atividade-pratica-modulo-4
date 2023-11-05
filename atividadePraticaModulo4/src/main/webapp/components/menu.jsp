<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        
         <ul class="text-center col justify-content-center  navbar-nav">
            <li class="nav-item active">
              <a class="nav-link active" href=<%=request.getParameter("home")%>>Home</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href=<%=request.getParameter("clientes")%>>Clientes</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href=<%=request.getParameter("promocoes")%>>Promoções</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="<%=request.getParameter("contatos")%>">Contato</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="<%=request.getParameter("sobre")%>">Sobre Nós</a>
            </li>
          </ul>

        