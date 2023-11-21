var mapContainer = document.getElementById('map'),
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
var map = new kakao.maps.Map(mapContainer, mapOption);

// 드래그 가능한 마커
var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);
var marker = new kakao.maps.Marker({
    position: markerPosition
});
marker.setMap(map);
marker.setDraggable(true);