<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<style>

.header{
	left: 50px;
}
.feedbox{

    display: flex;
    align-content: center;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;


	position: absolute;
	width: 578px;
	height: 356px;
	left: 450px;
	top: 150px;
	border-radius: 31px;
	background: rgba(250, 255, 0, 0.54);
}
.navbar
{
    
    width: 100%;
    height: 80px;
    /* background-color: antiquewhite; */
    background: rgba(254, 255, 255, 0.11);
    box-shadow: 0px 4px 12px rgb(164 164 164 / 12%);
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-evenly;
    

    
}
</style>
<body>
<div class = "navbar">
<div>
<svg width="199" height="112" viewBox="0 0 199 112" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M4.75614 89.2894H2.66069V83.1058H4.79841C5.41235 83.1058 5.93973 83.2295 6.38056 83.4771C6.8234 83.7227 7.16359 84.076 7.40111 84.5369C7.63863 84.9979 7.7574 85.5494 7.7574 86.1916C7.7574 86.8357 7.63763 87.3892 7.39809 87.8522C7.16057 88.3152 6.81737 88.6705 6.36848 88.918C5.92162 89.1656 5.38417 89.2894 4.75614 89.2894ZM3.78088 88.3202H4.70179C5.13255 88.3202 5.49186 88.2417 5.77971 88.0847C6.06755 87.9257 6.28394 87.6892 6.42887 87.3751C6.5738 87.0591 6.64627 86.6646 6.64627 86.1916C6.64627 85.7185 6.5738 85.326 6.42887 85.014C6.28394 84.7 6.06957 84.4655 5.78575 84.3105C5.50394 84.1535 5.15369 84.075 4.735 84.075H3.78088V88.3202ZM18.2584 86.1976C18.2584 86.8639 18.1336 87.4345 17.884 87.9096C17.6364 88.3826 17.2982 88.7449 16.8694 88.9965C16.4427 89.2482 15.9586 89.374 15.4171 89.374C14.8756 89.374 14.3905 89.2482 13.9618 88.9965C13.535 88.7429 13.1969 88.3796 12.9473 87.9066C12.6997 87.4315 12.5759 86.8619 12.5759 86.1976C12.5759 85.5313 12.6997 84.9617 12.9473 84.4886C13.1969 84.0136 13.535 83.6502 13.9618 83.3986C14.3905 83.147 14.8756 83.0212 15.4171 83.0212C15.9586 83.0212 16.4427 83.147 16.8694 83.3986C17.2982 83.6502 17.6364 84.0136 17.884 84.4886C18.1336 84.9617 18.2584 85.5313 18.2584 86.1976ZM17.1321 86.1976C17.1321 85.7286 17.0587 85.333 16.9117 85.011C16.7668 84.6869 16.5655 84.4423 16.3078 84.2773C16.0502 84.1102 15.7533 84.0267 15.4171 84.0267C15.081 84.0267 14.7841 84.1102 14.5264 84.2773C14.2688 84.4423 14.0665 84.6869 13.9195 85.011C13.7746 85.333 13.7021 85.7286 13.7021 86.1976C13.7021 86.6666 13.7746 87.0631 13.9195 87.3872C14.0665 87.7093 14.2688 87.9539 14.5264 88.1209C14.7841 88.286 15.081 88.3685 15.4171 88.3685C15.7533 88.3685 16.0502 88.286 16.3078 88.1209C16.5655 87.9539 16.7668 87.7093 16.9117 87.3872C17.0587 87.0631 17.1321 86.6666 17.1321 86.1976ZM28.3102 83.1058V89.2894H27.3138L24.4001 85.0774H24.3488V89.2894H23.2286V83.1058H24.231L27.1417 87.3208H27.196V83.1058H28.3102ZM34.236 89.2894H33.0404L35.2173 83.1058H36.6002L38.7802 89.2894H37.5845L35.9329 84.3739H35.8846L34.236 89.2894ZM34.2753 86.8649H37.5362V87.7646H34.2753V86.8649ZM42.4868 84.0448V83.1058H47.4205V84.0448H45.5092V89.2894H44.3981V84.0448H42.4868ZM52.2827 89.2894V83.1058H56.3045V84.0448H53.4029V85.7235H56.0962V86.6626H53.4029V88.3504H56.3287V89.2894H52.2827ZM67.107 84.0448V83.1058H72.0407V84.0448H70.1294V89.2894H69.0183V84.0448H67.107ZM76.9029 89.2894V83.1058H78.0231V85.7235H80.8885V83.1058H82.0117V89.2894H80.8885V86.6626H78.0231V89.2894H76.9029ZM87.1412 89.2894V83.1058H91.163V84.0448H88.2614V85.7235H90.9547V86.6626H88.2614V88.3504H91.1872V89.2894H87.1412ZM102.237 89.2894V83.1058H106.199V84.0448H103.357V85.7235H105.927V86.6626H103.357V89.2894H102.237ZM116.656 86.1976C116.656 86.8639 116.531 87.4345 116.281 87.9096C116.034 88.3826 115.696 88.7449 115.267 88.9965C114.84 89.2482 114.356 89.374 113.815 89.374C113.273 89.374 112.788 89.2482 112.359 88.9965C111.933 88.7429 111.594 88.3796 111.345 87.9066C111.097 87.4315 110.973 86.8619 110.973 86.1976C110.973 85.5313 111.097 84.9617 111.345 84.4886C111.594 84.0136 111.933 83.6502 112.359 83.3986C112.788 83.147 113.273 83.0212 113.815 83.0212C114.356 83.0212 114.84 83.147 115.267 83.3986C115.696 83.6502 116.034 84.0136 116.281 84.4886C116.531 84.9617 116.656 85.5313 116.656 86.1976ZM115.53 86.1976C115.53 85.7286 115.456 85.333 115.309 85.011C115.164 84.6869 114.963 84.4423 114.705 84.2773C114.448 84.1102 114.151 84.0267 113.815 84.0267C113.478 84.0267 113.182 84.1102 112.924 84.2773C112.666 84.4423 112.464 84.6869 112.317 85.011C112.172 85.333 112.1 85.7286 112.1 86.1976C112.1 86.6666 112.172 87.0631 112.317 87.3872C112.464 87.7093 112.666 87.9539 112.924 88.1209C113.182 88.286 113.478 88.3685 113.815 88.3685C114.151 88.3685 114.448 88.286 114.705 88.1209C114.963 87.9539 115.164 87.7093 115.309 87.3872C115.456 87.0631 115.53 86.6666 115.53 86.1976ZM127.152 86.1976C127.152 86.8639 127.027 87.4345 126.777 87.9096C126.53 88.3826 126.191 88.7449 125.763 88.9965C125.336 89.2482 124.852 89.374 124.31 89.374C123.769 89.374 123.284 89.2482 122.855 88.9965C122.428 88.7429 122.09 88.3796 121.84 87.9066C121.593 87.4315 121.469 86.8619 121.469 86.1976C121.469 85.5313 121.593 84.9617 121.84 84.4886C122.09 84.0136 122.428 83.6502 122.855 83.3986C123.284 83.147 123.769 83.0212 124.31 83.0212C124.852 83.0212 125.336 83.147 125.763 83.3986C126.191 83.6502 126.53 84.0136 126.777 84.4886C127.027 84.9617 127.152 85.5313 127.152 86.1976ZM126.025 86.1976C126.025 85.7286 125.952 85.333 125.805 85.011C125.66 84.6869 125.459 84.4423 125.201 84.2773C124.943 84.1102 124.646 84.0267 124.31 84.0267C123.974 84.0267 123.677 84.1102 123.42 84.2773C123.162 84.4423 122.96 84.6869 122.813 85.011C122.668 85.333 122.595 85.7286 122.595 86.1976C122.595 86.6666 122.668 87.0631 122.813 87.3872C122.96 87.7093 123.162 87.9539 123.42 88.1209C123.677 88.286 123.974 88.3685 124.31 88.3685C124.646 88.3685 124.943 88.286 125.201 88.1209C125.459 87.9539 125.66 87.7093 125.805 87.3872C125.952 87.0631 126.025 86.6666 126.025 86.1976ZM134.217 89.2894H132.122V83.1058H134.259C134.873 83.1058 135.401 83.2295 135.842 83.4771C136.284 83.7227 136.625 84.076 136.862 84.5369C137.1 84.9979 137.218 85.5494 137.218 86.1916C137.218 86.8357 137.099 87.3892 136.859 87.8522C136.622 88.3152 136.278 88.6705 135.83 88.918C135.383 89.1656 134.845 89.2894 134.217 89.2894ZM133.242 88.3202H134.163C134.594 88.3202 134.953 88.2417 135.241 88.0847C135.529 87.9257 135.745 87.6892 135.89 87.3751C136.035 87.0591 136.107 86.6646 136.107 86.1916C136.107 85.7185 136.035 85.326 135.89 85.014C135.745 84.7 135.531 84.4655 135.247 84.3105C134.965 84.1535 134.615 84.075 134.196 84.075H133.242V88.3202ZM147.942 84.0448V83.1058H152.876V84.0448H150.965V89.2894H149.854V84.0448H147.942ZM162.99 86.1976C162.99 86.8639 162.865 87.4345 162.615 87.9096C162.368 88.3826 162.03 88.7449 161.601 88.9965C161.174 89.2482 160.69 89.374 160.149 89.374C159.607 89.374 159.122 89.2482 158.693 88.9965C158.266 88.7429 157.928 88.3796 157.679 87.9066C157.431 87.4315 157.307 86.8619 157.307 86.1976C157.307 85.5313 157.431 84.9617 157.679 84.4886C157.928 84.0136 158.266 83.6502 158.693 83.3986C159.122 83.147 159.607 83.0212 160.149 83.0212C160.69 83.0212 161.174 83.147 161.601 83.3986C162.03 83.6502 162.368 84.0136 162.615 84.4886C162.865 84.9617 162.99 85.5313 162.99 86.1976ZM161.864 86.1976C161.864 85.7286 161.79 85.333 161.643 85.011C161.498 84.6869 161.297 84.4423 161.039 84.2773C160.782 84.1102 160.485 84.0267 160.149 84.0267C159.812 84.0267 159.515 84.1102 159.258 84.2773C159 84.4423 158.798 84.6869 158.651 85.011C158.506 85.333 158.434 85.7286 158.434 86.1976C158.434 86.6666 158.506 87.0631 158.651 87.3872C158.798 87.7093 159 87.9539 159.258 88.1209C159.515 88.286 159.812 88.3685 160.149 88.3685C160.485 88.3685 160.782 88.286 161.039 88.1209C161.297 87.9539 161.498 87.7093 161.643 87.3872C161.79 87.0631 161.864 86.6666 161.864 86.1976ZM170.055 89.2894H167.96V83.1058H170.098C170.712 83.1058 171.239 83.2295 171.68 83.4771C172.123 83.7227 172.463 84.076 172.7 84.5369C172.938 84.9979 173.057 85.5494 173.057 86.1916C173.057 86.8357 172.937 87.3892 172.697 87.8522C172.46 88.3152 172.117 88.6705 171.668 88.918C171.221 89.1656 170.683 89.2894 170.055 89.2894ZM169.08 88.3202H170.001C170.432 88.3202 170.791 88.2417 171.079 88.0847C171.367 87.9257 171.583 87.6892 171.728 87.3751C171.873 87.0591 171.946 86.6646 171.946 86.1916C171.946 85.7185 171.873 85.326 171.728 85.014C171.583 84.7 171.369 84.4655 171.085 84.3105C170.803 84.1535 170.453 84.075 170.034 84.075H169.08V88.3202ZM178.494 89.2894H177.298L179.475 83.1058H180.858L183.038 89.2894H181.843L180.191 84.3739H180.143L178.494 89.2894ZM178.533 86.8649H181.794V87.7646H178.533V86.8649ZM186.71 83.1058H187.975L189.488 85.8413H189.548L191.061 83.1058H192.326L190.077 86.9826V89.2894H188.96V86.9826L186.71 83.1058Z" fill="black"/>
<path d="M4.06708 32.4482V9.24951H19.4272V13.2934H8.97189V18.8212H18.4077V22.8652H8.97189V32.4482H4.06708ZM28.7652 32.7279C27.317 32.7279 26.0646 32.4203 25.008 31.8049C23.9576 31.1834 23.1465 30.3195 22.5746 29.2131C22.0028 28.1006 21.7169 26.8109 21.7169 25.344C21.7169 23.8647 22.0028 22.5719 22.5746 21.4656C23.1465 20.353 23.9576 19.4891 25.008 18.8738C26.0646 18.2522 27.317 17.9414 28.7652 17.9414C30.2134 17.9414 31.4627 18.2522 32.5131 18.8738C33.5697 19.4891 34.384 20.353 34.9558 21.4656C35.5276 22.5719 35.8135 23.8647 35.8135 25.344C35.8135 26.8109 35.5276 28.1006 34.9558 29.2131C34.384 30.3195 33.5697 31.1834 32.5131 31.8049C31.4627 32.4203 30.2134 32.7279 28.7652 32.7279ZM28.7839 29.6513C29.4427 29.6513 29.9928 29.4648 30.434 29.0919C30.8753 28.7128 31.2079 28.1969 31.4316 27.5443C31.6616 26.8917 31.7766 26.1489 31.7766 25.316C31.7766 24.4832 31.6616 23.7404 31.4316 23.0878C31.2079 22.4352 30.8753 21.9193 30.434 21.5402C29.9928 21.161 29.4427 20.9715 28.7839 20.9715C28.1188 20.9715 27.5594 21.161 27.1057 21.5402C26.6582 21.9193 26.3194 22.4352 26.0895 23.0878C25.8657 23.7404 25.7538 24.4832 25.7538 25.316C25.7538 26.1489 25.8657 26.8917 26.0895 27.5443C26.3194 28.1969 26.6582 28.7128 27.1057 29.0919C27.5594 29.4648 28.1188 29.6513 28.7839 29.6513ZM44.8663 32.7279C43.4181 32.7279 42.1657 32.4203 41.109 31.8049C40.0586 31.1834 39.2475 30.3195 38.6757 29.2131C38.1039 28.1006 37.818 26.8109 37.818 25.344C37.818 23.8647 38.1039 22.5719 38.6757 21.4656C39.2475 20.353 40.0586 19.4891 41.109 18.8738C42.1657 18.2522 43.4181 17.9414 44.8663 17.9414C46.3145 17.9414 47.5638 18.2522 48.6142 18.8738C49.6708 19.4891 50.485 20.353 51.0568 21.4656C51.6286 22.5719 51.9146 23.8647 51.9146 25.344C51.9146 26.8109 51.6286 28.1006 51.0568 29.2131C50.485 30.3195 49.6708 31.1834 48.6142 31.8049C47.5638 32.4203 46.3145 32.7279 44.8663 32.7279ZM44.8849 29.6513C45.5437 29.6513 46.0938 29.4648 46.5351 29.0919C46.9764 28.7128 47.3089 28.1969 47.5327 27.5443C47.7627 26.8917 47.8776 26.1489 47.8776 25.316C47.8776 24.4832 47.7627 23.7404 47.5327 23.0878C47.3089 22.4352 46.9764 21.9193 46.5351 21.5402C46.0938 21.161 45.5437 20.9715 44.8849 20.9715C44.2199 20.9715 43.6605 21.161 43.2067 21.5402C42.7592 21.9193 42.4205 22.4352 42.1905 23.0878C41.9668 23.7404 41.8549 24.4832 41.8549 25.316C41.8549 26.1489 41.9668 26.8917 42.1905 27.5443C42.4205 28.1969 42.7592 28.7128 43.2067 29.0919C43.6605 29.4648 44.2199 29.6513 44.8849 29.6513ZM12.2908 71.4482H4.06708V48.2495H12.3588C14.6923 48.2495 16.701 48.7139 18.385 49.6428C20.0691 50.5641 21.3642 51.8894 22.2704 53.6187C23.1841 55.3481 23.641 57.4172 23.641 59.8262C23.641 62.2428 23.1841 64.3195 22.2704 66.0563C21.3642 67.7932 20.0615 69.1261 18.3624 70.055C16.6708 70.9838 14.647 71.4482 12.2908 71.4482ZM8.97189 67.2457H12.087C13.5369 67.2457 14.7565 66.989 15.7457 66.4755C16.7426 65.9544 17.4902 65.1501 17.9886 64.0627C18.4945 62.9677 18.7475 61.5556 18.7475 59.8262C18.7475 58.112 18.4945 56.7112 17.9886 55.6237C17.4902 54.5363 16.7463 53.7358 15.7571 53.2223C14.7678 52.7088 13.5482 52.452 12.0983 52.452H8.97189V67.2457ZM33.3132 71.7279C31.865 71.7279 30.6126 71.4203 29.556 70.8049C28.5056 70.1834 27.6945 69.3195 27.1226 68.2131C26.5508 67.1006 26.2649 65.8109 26.2649 64.344C26.2649 62.8647 26.5508 61.5719 27.1226 60.4656C27.6945 59.353 28.5056 58.4891 29.556 57.8738C30.6126 57.2522 31.865 56.9414 33.3132 56.9414C34.7614 56.9414 36.0107 57.2522 37.0611 57.8738C38.1177 58.4891 38.9319 59.353 39.5038 60.4656C40.0756 61.5719 40.3615 62.8647 40.3615 64.344C40.3615 65.8109 40.0756 67.1006 39.5038 68.2131C38.9319 69.3195 38.1177 70.1834 37.0611 70.8049C36.0107 71.4203 34.7614 71.7279 33.3132 71.7279ZM33.3318 68.6513C33.9907 68.6513 34.5407 68.4648 34.982 68.0919C35.4233 67.7128 35.7559 67.1969 35.9796 66.5443C36.2096 65.8917 36.3246 65.1489 36.3246 64.316C36.3246 63.4832 36.2096 62.7404 35.9796 62.0878C35.7559 61.4352 35.4233 60.9193 34.982 60.5402C34.5407 60.161 33.9907 59.9715 33.3318 59.9715C32.6668 59.9715 32.1074 60.161 31.6537 60.5402C31.2062 60.9193 30.8674 61.4352 30.6375 62.0878C30.4137 62.7404 30.3018 63.4832 30.3018 64.316C30.3018 65.1489 30.4137 65.8917 30.6375 66.5443C30.8674 67.1969 31.2062 67.7128 31.6537 68.0919C32.1074 68.4648 32.6668 68.6513 33.3318 68.6513ZM49.4143 71.7279C47.9661 71.7279 46.7137 71.4203 45.657 70.8049C44.6066 70.1834 43.7955 69.3195 43.2237 68.2131C42.6519 67.1006 42.366 65.8109 42.366 64.344C42.366 62.8647 42.6519 61.5719 43.2237 60.4656C43.7955 59.353 44.6066 58.4891 45.657 57.8738C46.7137 57.2522 47.9661 56.9414 49.4143 56.9414C50.8625 56.9414 52.1118 57.2522 53.1622 57.8738C54.2188 58.4891 55.033 59.353 55.6048 60.4656C56.1766 61.5719 56.4626 62.8647 56.4626 64.344C56.4626 65.8109 56.1766 67.1006 55.6048 68.2131C55.033 69.3195 54.2188 70.1834 53.1622 70.8049C52.1118 71.4203 50.8625 71.7279 49.4143 71.7279ZM49.4329 68.6513C50.0917 68.6513 50.6418 68.4648 51.0831 68.0919C51.5244 67.7128 51.8569 67.1969 52.0807 66.5443C52.3106 65.8917 52.4256 65.1489 52.4256 64.316C52.4256 63.4832 52.3106 62.7404 52.0807 62.0878C51.8569 61.4352 51.5244 60.9193 51.0831 60.5402C50.6418 60.161 50.0917 59.9715 49.4329 59.9715C48.7679 59.9715 48.2085 60.161 47.7547 60.5402C47.3072 60.9193 46.9685 61.4352 46.7385 62.0878C46.5148 62.7404 46.4029 63.4832 46.4029 64.316C46.4029 65.1489 46.5148 65.8917 46.7385 66.5443C46.9685 67.1969 47.3072 67.7128 47.7547 68.0919C48.2085 68.4648 48.7679 68.6513 49.4329 68.6513Z" fill="black"/>
<rect x="1.38623" y="1.59644" width="76.406" height="74.128" stroke="#FFD600" stroke-width="1.32909"/>
</svg>
</div>

</div>
<div class="header">

</div>


<form method="post" action = "addfeedback" modelAttribute="feed">
<div class="feedbox">
<h2>Feedback</h2>
<p>On the scale of 5 your Citizen Rating</p>
<select name ="citizen_rating" required="required">

<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
</select>



<p>On the scale of 5 your Donar Rating</p>
<select name ="donar_rating" required="required">

<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
</select>



<p>On the scale of 5 your Volunteer Rating</p>
<select name ="volunteer_rating" required="required">

<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
</select>




<p>On the scale of 5 your Foodoo Rating</p>
<select name ="Foodoo_rating" required="required">

<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option>
</select>
<br>
<br>
<input type = "submit" value = "submit" class = "button">
</div>



</form>


<c:out value ="${msg}"/> 
</body>
</html>