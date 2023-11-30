<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>티스푼 메인 페이지</title>
    <jsp:include page="../include/head.jsp" />
</head>
<body>
<jsp:include page="../include/hd.jsp"/>
<!-- Slider Start -->
<section class="page-title bg-1">
    <div class="container">
        <div class="columns">
            <div class="column is-12">
                <div class="block has-text-centered">
                    <span class="text-white">Contact Us</span>
                    <h1 class="is-capitalize text-lg">Get in Touch</h1>

                    <ul class="list-inline breadcumb-nav">
                        <li class="list-inline-item"><a href="index.html" class="text-white">Home</a></li>
                        <li class="list-inline-item"><span class="text-white">/</span></li>
                        <li class="list-inline-item"><a href="#" class="text-white-50">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- contact form start -->
<section class="contact-form-wrap section">
    <div class="container">
        <div class="columns is-multiline">
            <div class="column is-12">
                <span class="text-color">Send a message</span>
                <h3 class="text-md mb-5">Contact Form</h3>
            </div>
        </div>

        <div class="columns is-multiline">
            <div class="column is-8-desktop">
                <form id="contact-form" class="contact__form" method="post" action="mail.php">
                    <!-- form message -->
                    <div class="columns is-multiline">
                        <div class="column is-12">

                            <div class="notification is-success contact__msg mb-4" style="display:none" role="alert">
                                Your message was sent successfully.
                            </div>

                            <select class="input" id="exampleFormControlSelect1">
                                <option>I Need help in ...</option>
                                <option>Software Design</option>
                                <option>Development cycle</option>
                                <option>Software Development</option>
                                <option>Maintenance</option>
                                <option>Process Query</option>
                                <option>Cost and Duration</option>
                                <option>Modal Delivery</option>
                            </select>
                        </div>
                        <div class="column is-12">
                            <input name="subject" id="subject" type="text" class="input" placeholder="Your Subject">
                        </div>
                        <div class="column is-12">
                            <input name="name" id="name" type="text" class="input" placeholder="Your Name">
                        </div>
                        <div class="column is-12">
                            <input name="email" id="email" type="email" class="input" placeholder="Email Address">
                        </div>
                        <div class="column is-12">
                            <textarea name="message" id="message" class="input" placeholder="Your Message"></textarea>
                        </div>
                        <div class="column is-12">
                            <button class="btn btn-main" name="submit" type="submit">Send Message</button>
                        </div>
                    </div>
                </form>
            </div>

            <div class="column is-4-desktop">
                <div class="short-info">
                    <ul class="list-unstyled">
                        <li>
                            <h5>Call Us</h5>
                            +88 01672 506 744
                        </li>
                        <li>
                            <h5>Email Us</h5>
                            contact@mail.com
                        </li>
                        <li>
                            <h5>Location Map</h5>
                            North Main Street,Brooklyn Australia
                        </li>
                    </ul>

                    <ul class="social-icons list-inline mt-5">
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li class="list-inline-item">
                            <a href="http://www.themefisher.com"><i class="fab fa-linkedin-in"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="columns is-multiline">
            <div class="column is-12">
                <div class="google-map mt-90 mb-6">
                    <div id="map"></div>
                </div>
            </div>
        </div>

        <div class="columns is-multiline">
            <div class="column is-4-desktop is-6-tablet">
                <div class="contact-content">
                    <h4 class="mb-4">Corporate Office</h4>

                    <ul class="address-block list-unstyled">
                        <li>
                            <i class="ti-location-pin mr-3"></i>North Main Street,Brooklyn Australia
                        </li>
                        <li>
                            <i class="ti-email mr-3"></i>Email: contact@mail.com
                        </li>
                        <li>
                            <i class="ti-mobile mr-3"></i>Phone:+88 01672 506 744
                        </li>
                    </ul>
                </div>
            </div>

            <div class="column is-4-desktop is-6-tablet">
                <div class="contact-info">
                    <h4 class="mb-4">USA Location</h4>
                    <ul class="address-block list-unstyled">
                        <li>
                            <i class="ti-location-pin mr-3"></i>North Main Street,Brooklyn Australia
                        </li>
                        <li>
                            <i class="ti-email mr-3"></i>Email: contact@mail.com
                        </li>
                        <li>
                            <i class="ti-mobile mr-3"></i>Phone:+88 01672 506 744
                        </li>
                    </ul>
                </div>
            </div>

            <div class="column is-4-desktop is-6-tablet">
                <div class="contact-info">
                    <h4 class="mb-4">Europe</h4>
                    <ul class="address-block list-unstyled">
                        <li>
                            <i class="ti-location-pin mr-3"></i>North Main Street,Brooklyn Australia
                        </li>
                        <li>
                            <i class="ti-email mr-3"></i>Email: contact@mail.com
                        </li>
                        <li>
                            <i class="ti-mobile mr-3"></i>Phone:+88 01672 506 744
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- footer Start -->
<jsp:include page="../include/ft.jsp"/>
</body>
</html>