<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md navbar-light fixed-top scrolling-navbar">
      <div class="container-fluid">

        <!-- Brand -->
        <a class="navbar-brand" href="#">
          	Ocus
        </a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="basicExampleNav">

          <!-- Right -->
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a href="<c:url value='/cart'/>" class="nav-link navbar-link-2 waves-effect">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
              </a>
            </li>
            
            <li class="nav-item">
              <a href="<c:url value='/trang-chu'/>" class="nav-link waves-effect">
                Home
              </a>
            </li>
            
            <li class="nav-item">
              <a href="#!" class="nav-link waves-effect">
                Contact
              </a>
            </li>
            
            <li class="nav-item">
              <a href="<c:url value='/login'/>" class="nav-link waves-effect">
                Sign in
              </a>
            </li>
            <li class="nav-item pl-2 mb-2 mb-md-0">
              <a href="<c:url value='/register'/>" type="button" class="btn btn-outline-info btn-md btn-rounded btn-navbar waves-effect waves-light">Sign
                up</a>
            </li>
            
          </ul>

        </div>
        <!-- Links -->
      </div>
    </nav>