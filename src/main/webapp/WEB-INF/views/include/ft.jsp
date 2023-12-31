<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />
<!-- 푸터 내용 기술 -->
<!-- footer Start -->
<footer class="footer section">
    <div class="container">
        <div class="columns is-multiline">
            <div class="column is-3-widescreen is-6-tablet">
                <div class="widget">
                    <div class="logo mb-4">
                        <h3>Orbitor</h3>
                    </div>
                    <p>Tempora dolorem voluptatum nam vero assumenda voluptate, facilis ad eos obcaecati tenetur veritatis eveniet distinctio.</p>
                </div>
            </div>
            <div class="column is-2-widescreen is-6-desktop is-6-tablet ml-auto">
                <div class="widget">
                    <h4 class="is-capitalize mb-4">Company</h4>

                    <ul class="list-unstyled footer-menu lh-35">
                        <li><a href="#">About</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="column is-3-widescreen is-6-desktop is-6-tablet">
                <div class="widget">
                    <h4 class="is-capitalize mb-4">Support</h4>

                    <ul class="list-unstyled footer-menu lh-35">
                        <li><a href="#">Terms & Conditions</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
            <div class="column is-3-widescreen is-6-desktop is-6-tablet">
                <div class="widget widget-contact">
                    <h4 class="is-capitalize mb-4">Get in Touch</h4>
                    <h6><a href="tel:+23-345-67890" > <i class="ti-headphone-alt mr-3"></i>Support@megakit.com</a></h6>
                    <h6><a href="mailto:support@gmail.com" > <i class="ti-mobile mr-3"></i>+23-456-6588</a></h6>

                    <ul class="list-inline footer-socials mt-5">
                        <li class="list-inline-item"><a href="https://www.facebook.com/themefisher"><i class="ti-facebook mr-2"></i></a></li>
                        <li class="list-inline-item"><a href="https://twitter.com/themefisher"><i class="ti-twitter mr-2"></i></a></li>
                        <li class="list-inline-item"><a href="https://www.pinterest.com/themefisher/"><i class="ti-linkedin mr-2 "></i></a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="footer-btm py-4 mt-6">
            <div class="columns">
                <div class="column is-6-widescreen">
                    <div class="copyright">
                        &copy; Copyright Reserved to <span class="text-color">Orbitor</span> by <a href="https://themefisher.com/" target="_blank">Themefisher</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>