INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000003', 1, 'OSI 7계층', 'flashcard', '{
  "cards": [
    {"front": "OSI 7계층이란 무엇인가?", "back": "네트워크 통신을 7개의 계층으로 나눈 국제 표준 모델. 물리 → 데이터링크 → 네트워크 → 전송 → 세션 → 표현 → 응용 계층 순서로 구성된다.", "hint": null},
    {"front": "물리 계층(1계층)의 역할은?", "back": "비트(0과 1)를 전기 신호, 광 신호, 무선 신호로 변환하여 전송하는 계층. 케이블, 허브, 리피터가 해당 장비이다.", "hint": null},
    {"front": "데이터링크 계층(2계층)의 역할은?", "back": "같은 네트워크 내 장치 간 데이터 전송을 담당. MAC 주소를 사용하며, 스위치와 브리지가 해당 장비이다. 이더넷 프레임 단위로 데이터를 전송한다.", "hint": null},
    {"front": "네트워크 계층(3계층)의 역할은?", "back": "서로 다른 네트워크 간 데이터 전달(라우팅)을 담당. IP 주소를 사용하며, 라우터가 해당 장비이다. IP, ICMP, ARP 프로토콜이 여기에 속한다.", "hint": null},
    {"front": "전송 계층(4계층)의 역할은?", "back": "프로세스 간 신뢰성 있는 데이터 전송을 담당. 포트 번호를 사용하며, TCP(신뢰성)와 UDP(속도)가 대표 프로토콜이다. 흐름 제어와 오류 제어를 수행한다.", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 2, 'TCP/IP 4계층', 'quiz', '{
  "questions": [
    {"question": "TCP/IP 4계층 모델에서 OSI 7계층의 세션, 표현, 응용 계층에 해당하는 계층은?", "code": null, "options": ["인터넷 계층", "전송 계층", "응용 계층", "네트워크 액세스 계층"], "correct_index": 2, "explanation": "TCP/IP 모델의 응용 계층은 OSI 모델의 세션(5), 표현(6), 응용(7) 계층을 통합한 것이다. HTTP, FTP, DNS, SMTP 등이 여기에 속한다."},
    {"question": "TCP/IP 4계층 중 IP 프로토콜이 동작하는 계층은?", "code": null, "options": ["네트워크 액세스 계층", "인터넷 계층", "전송 계층", "응용 계층"], "correct_index": 1, "explanation": "인터넷 계층은 OSI의 네트워크 계층에 해당하며, IP, ICMP, ARP 프로토콜이 동작한다. 논리적 주소(IP 주소)를 이용한 라우팅을 담당한다."},
    {"question": "TCP/IP 모델에서 이더넷(Ethernet)이 속하는 계층은?", "code": null, "options": ["응용 계층", "전송 계층", "인터넷 계층", "네트워크 액세스 계층"], "correct_index": 3, "explanation": "네트워크 액세스 계층(링크 계층)은 OSI의 물리 계층과 데이터링크 계층을 합친 것이다. 이더넷, Wi-Fi, MAC 주소 등이 여기에 속한다."},
    {"question": "다음 중 TCP/IP 전송 계층의 프로토콜로 올바르게 짝지어진 것은?", "code": null, "options": ["HTTP, FTP", "IP, ICMP", "TCP, UDP", "이더넷, ARP"], "correct_index": 2, "explanation": "전송 계층에는 TCP(신뢰성 있는 연결지향 프로토콜)와 UDP(비연결형 프로토콜)가 속한다. HTTP와 FTP는 응용 계층, IP와 ICMP는 인터넷 계층에 속한다."},
    {"question": "TCP/IP 모델이 OSI 모델보다 실용적으로 사용되는 주된 이유는?", "code": null, "options": ["보안이 더 강력하기 때문", "실제 인터넷 구현을 기반으로 만들어졌기 때문", "계층이 더 많아 세분화되기 때문", "속도가 더 빠르기 때문"], "correct_index": 1, "explanation": "TCP/IP 모델은 실제 인터넷 프로토콜 구현을 바탕으로 만들어진 실용적인 모델이다. OSI 모델은 이론적 표준 모델로, 교육 목적으로 주로 활용된다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 3, '물리/데이터링크 계층', 'flashcard', '{
  "cards": [
    {"front": "이더넷(Ethernet)이란?", "back": "유선 LAN 환경에서 가장 널리 사용되는 데이터링크 계층 프로토콜. IEEE 802.3 표준으로 정의되며, CSMA/CD 방식으로 충돌을 감지하고 처리한다.", "hint": null},
    {"front": "MAC 주소란?", "back": "네트워크 인터페이스 카드(NIC)에 부여된 48비트(6바이트) 하드웨어 주소. 제조사 코드(OUI) 24비트 + 시리얼 번호 24비트로 구성되며, 16진수로 표기한다. (예: AA:BB:CC:DD:EE:FF)", "hint": null},
    {"front": "스위치(Switch)란?", "back": "데이터링크 계층 장비로, MAC 주소 테이블을 이용해 목적지 포트로만 프레임을 전달한다. 허브와 달리 충돌 도메인을 분리하여 효율적인 통신이 가능하다.", "hint": null},
    {"front": "허브(Hub)와 스위치(Switch)의 차이는?", "back": "허브: 수신한 데이터를 연결된 모든 포트로 브로드캐스트, 충돌 도메인 공유. 스위치: MAC 주소 기반으로 특정 포트에만 전송, 포트별 충돌 도메인 분리. 스위치가 성능과 보안 면에서 우수하다.", "hint": null},
    {"front": "CSMA/CD란?", "back": "Carrier Sense Multiple Access with Collision Detection의 약자. 이더넷에서 사용하는 접근 제어 방식. 전송 전 채널을 감지하고, 충돌 발생 시 일정 시간 후 재전송한다. 현대 스위치 환경에서는 거의 사용되지 않는다.", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 4, 'IP 주소', 'quiz', '{
  "questions": [
    {"question": "IPv4 클래스 A의 첫 번째 옥텟 범위로 올바른 것은?", "code": null, "options": ["1 ~ 126", "128 ~ 191", "192 ~ 223", "224 ~ 239"], "correct_index": 0, "explanation": "클래스 A: 1~126 (대규모 네트워크), 클래스 B: 128~191 (중규모), 클래스 C: 192~223 (소규모), 클래스 D: 224~239 (멀티캐스트). 127.x.x.x는 루프백 주소로 예약되어 있다."},
    {"question": "다음 중 사설 IP 주소 범위에 해당하지 않는 것은?", "code": null, "options": ["10.0.0.1", "172.16.0.1", "192.168.1.1", "203.0.113.1"], "correct_index": 3, "explanation": "사설 IP 범위: 10.0.0.0/8, 172.16.0.0~172.31.255.255/12, 192.168.0.0/16. 203.0.113.x는 문서/예제용으로 예약된 공인 IP 대역이다."},
    {"question": "공인 IP(Public IP)와 사설 IP(Private IP)의 차이로 올바른 것은?", "code": null, "options": ["공인 IP는 인터넷에서 직접 사용 불가", "사설 IP는 전 세계적으로 유일한 주소", "공인 IP는 인터넷에서 유일하게 식별 가능한 주소", "사설 IP는 ISP가 할당하는 주소"], "correct_index": 2, "explanation": "공인 IP는 인터넷에서 유일하게 식별 가능하며 ISP가 할당한다. 사설 IP는 내부 네트워크에서만 유효하고 중복 사용 가능하다. NAT를 통해 사설 IP를 공인 IP로 변환하여 인터넷에 접속한다."},
    {"question": "IPv4 주소의 총 비트 수와 표현 형식은?", "code": null, "options": ["32비트, 10진수 4옥텟", "64비트, 16진수 8그룹", "128비트, 16진수 8그룹", "48비트, 16진수 6옥텟"], "correct_index": 0, "explanation": "IPv4는 32비트 주소 체계로, 8비트씩 4개의 옥텟(0~255)을 점(.)으로 구분하여 표기한다. 예: 192.168.1.1. 총 약 43억 개의 주소를 표현할 수 있다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 5, '서브넷 마스크', 'fill_blank', '{
  "questions": [
    {"question": "CIDR 표기법에서 192.168.1.0/24의 서브넷 마스크를 10진수로 나타내면?", "code": "서브넷 마스크: ___", "options": ["255.255.255.0", "255.255.0.0", "255.0.0.0", "255.255.255.128"], "correct_index": 0, "explanation": "/24는 앞에서 24비트가 네트워크 부분임을 의미한다. 24비트를 1로 채우면 11111111.11111111.11111111.00000000 = 255.255.255.0 이다."},
    {"question": "192.168.1.0/24 네트워크에서 사용 가능한 호스트 수는?", "code": "호스트 수 = 2^(___) - 2", "options": ["8", "16", "24", "32"], "correct_index": 0, "explanation": "/24이면 호스트 비트는 32-24=8비트. 2^8=256개 중 네트워크 주소(192.168.1.0)와 브로드캐스트 주소(192.168.1.255)를 제외하면 254개의 호스트가 사용 가능하다."},
    {"question": "10.0.0.0/8 네트워크를 /16으로 서브넷팅하면 생성되는 서브넷 수는?", "code": "서브넷 수 = 2^(___ - ___)", "options": ["2^8 = 256개", "2^4 = 16개", "2^16 = 65536개", "2^24 개"], "correct_index": 0, "explanation": "/8에서 /16으로 서브넷팅하면 추가된 비트 수는 16-8=8비트. 따라서 2^8=256개의 서브넷이 생성된다. 각 서브넷에는 2^16-2=65534개의 호스트를 수용할 수 있다."},
    {"question": "서브넷 마스크 255.255.255.192를 CIDR 표기법으로 나타내면?", "code": "255.255.255.192 = /___", "options": ["/26", "/24", "/28", "/30"], "correct_index": 0, "explanation": "192 = 11000000(2진수), 앞의 2비트만 1. 따라서 24+2=26비트가 1이므로 /26이다. 이 서브넷에서는 2^6-2=62개의 호스트를 사용할 수 있다."},
    {"question": "192.168.10.0/28 네트워크에서 브로드캐스트 주소는?", "code": "네트워크 주소: 192.168.10.0\n서브넷 마스크: 255.255.255.___", "options": ["240", "224", "192", "128"], "correct_index": 0, "explanation": "/28이면 호스트 비트는 4비트. 마지막 옥텟 마스크는 11110000=240. 따라서 서브넷 마스크는 255.255.255.240이다. 브로드캐스트 주소는 192.168.10.15(0+16-1)이다."}
  ]
}', 720),

('c1000000-0000-0000-0000-000000000003', 6, 'IPv6', 'flashcard', '{
  "cards": [
    {"front": "IPv6란?", "back": "128비트 주소 체계를 사용하는 차세대 인터넷 프로토콜. IPv4의 주소 고갈 문제를 해결하기 위해 개발되었으며, 약 3.4×10^38개의 주소를 표현할 수 있다.", "hint": null},
    {"front": "IPv6 주소 표기 형식은?", "back": "128비트를 16비트씩 8그룹으로 나누어 콜론(:)으로 구분하여 16진수로 표기한다. 예: 2001:0db8:85a3:0000:0000:8a2e:0370:7334. 연속된 0그룹은 '::'으로 축약 가능하다.", "hint": null},
    {"front": "IPv4와 IPv6의 주요 차이점은?", "back": "IPv4: 32비트, 점-10진수 표기, NAT 필요, 헤더 복잡. IPv6: 128비트, 콜론-16진수 표기, NAT 불필요(모든 기기에 고유 주소), 헤더 단순화, IPSec 기본 지원, 자동 주소 설정(SLAAC) 지원.", "hint": null},
    {"front": "IPv6의 루프백 주소와 링크 로컬 주소는?", "back": "루프백 주소: ::1 (IPv4의 127.0.0.1에 해당). 링크 로컬 주소: fe80::/10 대역으로, 같은 네트워크 세그먼트 내 통신에만 사용. 전역 유니캐스트 주소: 2000::/3 대역 (인터넷에서 라우팅 가능).", "hint": null},
    {"front": "IPv6 전환 기술의 종류는?", "back": "1. 듀얼 스택(Dual Stack): IPv4와 IPv6 동시 운영. 2. 터널링(Tunneling): IPv6 패킷을 IPv4로 캡슐화하여 전송. 3. 변환(Translation): NAT64/DNS64로 IPv6↔IPv4 변환. 현재 듀얼 스택이 가장 많이 사용된다.", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 7, 'NAT', 'quiz', '{
  "questions": [
    {"question": "NAT(Network Address Translation)의 주된 목적은?", "code": null, "options": ["데이터 암호화", "사설 IP와 공인 IP 간의 주소 변환", "도메인 이름을 IP로 변환", "라우팅 경로 최적화"], "correct_index": 1, "explanation": "NAT는 내부 사설 IP 주소를 외부 공인 IP 주소로 변환하는 기술이다. IPv4 주소 고갈 문제를 완화하고 내부 네트워크를 외부로부터 숨기는 보안 효과도 있다."},
    {"question": "PAT(Port Address Translation, NAPT)의 특징으로 올바른 것은?", "code": null, "options": ["하나의 사설 IP를 여러 공인 IP로 변환", "여러 사설 IP를 하나의 공인 IP + 포트 번호로 변환", "공인 IP를 사설 IP로 변환", "IP 주소 변환 없이 포트만 변환"], "correct_index": 1, "explanation": "PAT(또는 NAPT, 오버로딩 NAT)는 여러 내부 호스트가 하나의 공인 IP를 공유하되, 각기 다른 포트 번호를 사용하여 구분하는 방식이다. 가정용 공유기에서 가장 많이 사용된다."},
    {"question": "포트 포워딩(Port Forwarding)이란?", "code": null, "options": ["외부에서 내부 서버로 특정 포트 트래픽을 전달하는 기술", "내부에서 외부로 포트를 변환하는 기술", "포트 번호를 암호화하는 기술", "여러 서버에 트래픽을 분산하는 기술"], "correct_index": 0, "explanation": "포트 포워딩은 외부에서 들어오는 특정 포트(예: 80번)의 요청을 내부 네트워크의 특정 서버로 전달하는 NAT 규칙이다. 내부 서버를 외부에 공개할 때 사용한다."},
    {"question": "NAT의 단점으로 올바르지 않은 것은?", "code": null, "options": ["종단 간 연결성(End-to-End Connectivity) 훼손", "P2P 통신의 복잡성 증가", "IPv4 주소 고갈 가속화", "상태 테이블 유지로 인한 성능 오버헤드"], "correct_index": 2, "explanation": "NAT는 오히려 IPv4 주소 고갈을 늦추는 역할을 한다. 단점으로는 종단 간 연결성 훼손, P2P 통신 어려움, NAT 테이블 유지 오버헤드, 일부 프로토콜(FTP, SIP 등) 동작 문제 등이 있다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 8, 'ARP', 'quiz', '{
  "questions": [
    {"question": "ARP(Address Resolution Protocol)의 역할은?", "code": null, "options": ["도메인 이름을 IP 주소로 변환", "IP 주소를 MAC 주소로 변환", "MAC 주소를 IP 주소로 변환", "공인 IP를 사설 IP로 변환"], "correct_index": 1, "explanation": "ARP는 네트워크 계층의 IP 주소를 데이터링크 계층의 MAC 주소로 변환하는 프로토콜이다. 같은 네트워크 내에서 실제 데이터 전송 시 MAC 주소가 필요하기 때문에 사용된다."},
    {"question": "ARP 동작 과정에서 ARP 요청(Request)의 특징은?", "code": null, "options": ["유니캐스트로 특정 MAC에 전송", "브로드캐스트로 네트워크 전체에 전송", "멀티캐스트로 그룹에 전송", "라우터를 통해 다른 네트워크로 전송"], "correct_index": 1, "explanation": "ARP 요청은 'FF:FF:FF:FF:FF:FF' 브로드캐스트 MAC 주소로 전송되어 같은 네트워크의 모든 호스트에게 전달된다. 해당 IP를 가진 호스트만 ARP 응답(유니캐스트)을 보낸다."},
    {"question": "ARP 캐시(ARP Cache)란?", "code": null, "options": ["라우팅 경로를 저장하는 테이블", "IP-MAC 주소 매핑을 임시 저장하는 테이블", "도메인-IP 매핑을 저장하는 테이블", "NAT 변환 정보를 저장하는 테이블"], "correct_index": 1, "explanation": "ARP 캐시는 ARP 조회 결과(IP-MAC 매핑)를 일정 시간 동안 메모리에 저장하여 반복적인 ARP 브로드캐스트를 줄이는 역할을 한다. 'arp -a' 명령으로 확인할 수 있다."},
    {"question": "ARP 스푸핑(ARP Spoofing) 공격이란?", "code": null, "options": ["ARP 캐시를 삭제하는 공격", "가짜 ARP 응답으로 IP-MAC 매핑을 조작하는 공격", "ARP 브로드캐스트를 차단하는 공격", "ARP 패킷을 암호화하는 공격"], "correct_index": 1, "explanation": "ARP 스푸핑은 공격자가 위조된 ARP 응답을 보내 피해자의 ARP 캐시에 잘못된 IP-MAC 매핑을 심는 공격이다. 이를 통해 트래픽을 가로채는 중간자(MITM) 공격에 활용된다."},
    {"question": "RARP(Reverse ARP)와 GARP(Gratuitous ARP)에 대한 설명으로 옳은 것은?", "code": null, "options": ["RARP: IP→MAC 변환, GARP: 브로드캐스트로 자신의 IP-MAC 쌍 공지", "RARP: MAC→IP 변환, GARP: 브로드캐스트로 자신의 IP-MAC 쌍 공지", "RARP: MAC→IP 변환, GARP: IP→MAC 변환", "RARP: IP→MAC 변환, GARP: MAC→IP 변환"], "correct_index": 1, "explanation": "RARP는 MAC 주소로 IP 주소를 얻는 프로토콜(현재는 DHCP로 대체). GARP는 자신의 IP-MAC 쌍을 브로드캐스트로 공지하여 다른 호스트의 ARP 캐시를 갱신하거나 IP 충돌을 감지하는 데 사용한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 9, 'TCP 개념', 'flashcard', '{
  "cards": [
    {"front": "TCP(Transmission Control Protocol)란?", "back": "전송 계층의 연결지향형 프로토콜. 데이터 전달의 신뢰성을 보장하며 순서대로 데이터를 전달한다. 웹, 이메일, 파일 전송 등 정확성이 중요한 통신에 사용된다.", "hint": null},
    {"front": "TCP의 신뢰성(Reliability)은 어떻게 보장되는가?", "back": "1. 순서 번호(Sequence Number): 데이터 순서 보장. 2. 확인 응답(ACK): 수신 확인. 3. 재전송(Retransmission): 손실된 패킷 재전송. 4. 체크섬(Checksum): 오류 감지. 이 메커니즘들로 데이터 손실, 중복, 순서 오류를 방지한다.", "hint": null},
    {"front": "TCP의 흐름 제어(Flow Control)란?", "back": "수신 측의 처리 속도에 맞게 송신 측의 전송 속도를 조절하는 메커니즘. 수신 측은 수신 윈도우 크기(rwnd)를 통해 처리 가능한 데이터량을 송신 측에 알린다. 슬라이딩 윈도우 방식으로 구현된다.", "hint": null},
    {"front": "TCP의 혼잡 제어(Congestion Control)란?", "back": "네트워크 혼잡을 감지하고 송신 속도를 조절하는 메커니즘. 슬로우 스타트(Slow Start), 혼잡 회피(Congestion Avoidance), 빠른 재전송(Fast Retransmit), 빠른 복구(Fast Recovery) 등의 알고리즘을 사용한다.", "hint": null},
    {"front": "TCP 세그먼트 헤더의 주요 필드는?", "back": "출발지/목적지 포트 번호(16비트), 순서 번호(32비트), 확인 응답 번호(32비트), 헤더 길이, 제어 플래그(SYN/ACK/FIN/RST/PSH/URG), 윈도우 크기(16비트), 체크섬(16비트). 기본 헤더 크기는 20바이트이다.", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 10, 'TCP 3-way handshake', 'fill_blank', '{
  "questions": [
    {"question": "TCP 3-way handshake의 첫 번째 단계에서 클라이언트가 보내는 패킷은?", "code": "클라이언트 → 서버: ___ 패킷 전송 (seq=x)", "options": ["SYN", "SYN-ACK", "ACK", "FIN"], "correct_index": 0, "explanation": "클라이언트는 연결 요청을 위해 SYN(Synchronize) 플래그가 설정된 패킷을 보낸다. 이때 클라이언트의 초기 순서 번호(ISN)가 포함된다."},
    {"question": "TCP 3-way handshake의 두 번째 단계에서 서버가 보내는 패킷은?", "code": "서버 → 클라이언트: ___ 패킷 전송 (seq=y, ack=x+1)", "options": ["SYN-ACK", "SYN", "ACK", "FIN-ACK"], "correct_index": 0, "explanation": "서버는 클라이언트의 SYN을 받고 SYN-ACK 패킷을 응답한다. ACK(ack=x+1)로 클라이언트 SYN을 확인하고, SYN(seq=y)으로 서버의 초기 순서 번호를 알린다."},
    {"question": "TCP 연결 해제(4-way handshake)에서 연결을 끊으려는 쪽이 먼저 보내는 플래그는?", "code": "종료 요청 측 → 상대방: ___ 패킷 전송", "options": ["FIN", "RST", "SYN", "ACK"], "correct_index": 0, "explanation": "연결 종료 시 FIN(Finish) 플래그 패킷을 전송한다. 상대방은 ACK로 응답하고, 이후 상대방도 FIN을 보내면 요청 측이 ACK로 응답하며 연결이 종료된다(4단계)."},
    {"question": "TCP TIME_WAIT 상태란?", "code": "연결 종료 후 ___ 상태로 일정 시간 대기", "options": ["TIME_WAIT", "CLOSE_WAIT", "SYN_SENT", "ESTABLISHED"], "correct_index": 0, "explanation": "TIME_WAIT는 능동적으로 연결을 닫은 쪽이 마지막 ACK 전송 후 2MSL(Maximum Segment Lifetime) 동안 유지하는 상태이다. 지연된 패킷을 처리하고 마지막 ACK가 손실되었을 때 FIN 재전송에 응답하기 위해 필요하다."},
    {"question": "TCP handshake에서 SYN Flooding 공격의 원리는?", "code": "공격자: 수많은 ___ 패킷을 보내고 ACK를 보내지 않음", "options": ["SYN", "ACK", "FIN", "RST"], "correct_index": 0, "explanation": "SYN Flooding은 공격자가 대량의 SYN 패킷을 보내고 ACK를 보내지 않아 서버의 연결 대기 큐(backlog queue)를 고갈시키는 DoS 공격이다. SYN Cookie 기법으로 방어할 수 있다."}
  ]
}', 720),

('c1000000-0000-0000-0000-000000000003', 11, 'TCP vs UDP', 'quiz', '{
  "questions": [
    {"question": "UDP(User Datagram Protocol)의 특징으로 올바른 것은?", "code": null, "options": ["연결지향, 신뢰성 보장", "비연결형, 빠른 전송 속도", "흐름 제어와 혼잡 제어 지원", "순서 번호로 데이터 순서 보장"], "correct_index": 1, "explanation": "UDP는 비연결형 프로토콜로 handshake 없이 바로 데이터를 전송한다. 신뢰성 보장 메커니즘이 없어 오버헤드가 적고 전송 속도가 빠르다. 단, 데이터 손실이나 순서 오류가 발생할 수 있다."},
    {"question": "다음 중 UDP를 사용하기에 적합한 서비스는?", "code": null, "options": ["파일 전송(FTP)", "이메일(SMTP)", "실시간 화상회의", "웹 브라우저(HTTP)"], "correct_index": 2, "explanation": "실시간 화상회의, 스트리밍, 온라인 게임, DNS는 약간의 데이터 손실보다 낮은 지연이 중요하므로 UDP를 사용한다. FTP, SMTP, HTTP는 데이터 무결성이 중요하므로 TCP를 사용한다."},
    {"question": "TCP와 UDP의 헤더 크기 비교로 올바른 것은?", "code": null, "options": ["TCP 8바이트, UDP 20바이트", "TCP 20바이트, UDP 8바이트", "TCP 64바이트, UDP 20바이트", "TCP 20바이트, UDP 20바이트"], "correct_index": 1, "explanation": "TCP 기본 헤더는 20바이트(옵션 포함 최대 60바이트), UDP 헤더는 8바이트(출발지 포트, 목적지 포트, 길이, 체크섬 각 2바이트)이다. UDP의 작은 헤더가 오버헤드를 줄이는 데 기여한다."},
    {"question": "TCP가 UDP보다 느린 주된 이유는?", "code": null, "options": ["패킷 크기가 더 크기 때문", "연결 수립, 확인 응답, 흐름/혼잡 제어 등 오버헤드 때문", "암호화를 기본으로 지원하기 때문", "라우팅 경로가 더 복잡하기 때문"], "correct_index": 1, "explanation": "TCP는 3-way handshake로 연결을 수립하고, ACK로 수신을 확인하며, 흐름 제어와 혼잡 제어를 수행하는 등 신뢰성을 위한 오버헤드가 있다. 이로 인해 UDP에 비해 전송 속도가 낮고 지연이 발생할 수 있다."},
    {"question": "최근 HTTP/3에서 TCP 대신 사용하는 프로토콜은?", "code": null, "options": ["UDP 기반의 QUIC 프로토콜", "순수 UDP 프로토콜", "SCTP 프로토콜", "DCCP 프로토콜"], "correct_index": 0, "explanation": "HTTP/3는 UDP 기반의 QUIC(Quick UDP Internet Connections) 프로토콜을 사용한다. QUIC은 UDP의 빠른 속도 위에 TCP의 신뢰성과 TLS 보안을 구현하여 TCP의 Head-of-Line Blocking 문제를 해결한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 12, '흐름제어와 혼잡제어', 'quiz', '{
  "questions": [
    {"question": "슬라이딩 윈도우(Sliding Window) 방식의 목적은?", "code": null, "options": ["암호화된 데이터를 순서대로 전송", "ACK를 기다리지 않고 여러 패킷을 연속 전송하여 효율 향상", "IP 주소를 MAC 주소로 변환", "네트워크 혼잡을 감지하여 전송 중단"], "correct_index": 1, "explanation": "슬라이딩 윈도우는 ACK를 받기 전에도 윈도우 크기만큼 여러 패킷을 연속으로 전송할 수 있게 하는 방식이다. 왕복 지연(RTT) 동안 파이프라인을 채워 네트워크 이용률을 높인다."},
    {"question": "TCP 슬로우 스타트(Slow Start)의 동작 방식은?", "code": null, "options": ["혼잡 윈도우를 매 RTT마다 선형적으로 증가", "혼잡 윈도우를 매 RTT마다 2배씩 지수적으로 증가", "혼잡 윈도우를 일정하게 유지", "혼잡 감지 시 전송을 완전히 중단"], "correct_index": 1, "explanation": "슬로우 스타트는 혼잡 윈도우(cwnd)를 1 MSS에서 시작하여 ACK를 받을 때마다 1 MSS씩 증가(RTT마다 2배)시킨다. ssthresh(슬로우 스타트 임계값)에 도달하면 혼잡 회피 단계로 전환된다."},
    {"question": "AIMD(Additive Increase Multiplicative Decrease)란?", "code": null, "options": ["윈도우를 덧셈으로 늘리고 혼잡 시 곱셈으로 줄이는 방식", "윈도우를 곱셈으로 늘리고 혼잡 시 덧셈으로 줄이는 방식", "윈도우를 항상 절반으로 유지하는 방식", "수신 버퍼 크기에 따라 윈도우를 조정하는 방식"], "correct_index": 0, "explanation": "AIMD는 혼잡 회피 단계에서 사용하는 방식으로, 혼잡이 없으면 RTT마다 윈도우를 1 MSS씩 선형 증가하고, 혼잡(패킷 손실) 발생 시 윈도우를 절반으로 감소시킨다. 이를 통해 공정한 대역폭 배분을 달성한다."},
    {"question": "수신 윈도우(rwnd)와 혼잡 윈도우(cwnd)의 관계로 올바른 것은?", "code": null, "options": ["실제 전송 윈도우 = rwnd + cwnd", "실제 전송 윈도우 = min(rwnd, cwnd)", "실제 전송 윈도우 = max(rwnd, cwnd)", "실제 전송 윈도우 = rwnd × cwnd"], "correct_index": 1, "explanation": "실제 전송 가능한 윈도우 크기는 수신 측의 처리 능력(rwnd)과 네트워크 혼잡 상태(cwnd) 중 더 작은 값으로 결정된다. rwnd는 흐름 제어, cwnd는 혼잡 제어에 각각 사용된다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 13, 'HTTP 기초', 'flashcard', '{
  "cards": [
    {"front": "HTTP(HyperText Transfer Protocol)란?", "back": "웹에서 클라이언트(브라우저)와 서버 간 데이터를 주고받기 위한 응용 계층 프로토콜. 요청-응답(Request-Response) 방식으로 동작하며, 기본적으로 TCP 80번 포트를 사용한다. 무상태(Stateless) 프로토콜이다.", "hint": null},
    {"front": "HTTP 주요 메서드(Method)와 용도는?", "back": "GET: 리소스 조회. POST: 리소스 생성. PUT: 리소스 전체 수정. PATCH: 리소스 일부 수정. DELETE: 리소스 삭제. HEAD: 헤더만 조회. OPTIONS: 지원 메서드 확인. GET/HEAD/OPTIONS는 안전(Safe), GET/HEAD/PUT/DELETE는 멱등(Idempotent)하다.", "hint": null},
    {"front": "HTTP 상태 코드의 분류는?", "back": "1xx: 정보(처리 중). 2xx: 성공(200 OK, 201 Created, 204 No Content). 3xx: 리다이렉션(301 Moved, 302 Found, 304 Not Modified). 4xx: 클라이언트 오류(400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found). 5xx: 서버 오류(500 Internal Server Error, 503 Service Unavailable).", "hint": null},
    {"front": "HTTP/1.1, HTTP/2, HTTP/3의 주요 차이점은?", "back": "HTTP/1.1: 텍스트 기반, 지속 연결(Keep-Alive), 파이프라이닝 지원(HOL Blocking 문제). HTTP/2: 바이너리 프레임, 멀티플렉싱, 헤더 압축(HPACK), 서버 푸시 지원. HTTP/3: UDP 기반 QUIC, TLS 1.3 내장, 연결 설정 속도 향상.", "hint": null},
    {"front": "HTTP 헤더의 주요 종류와 역할은?", "back": "요청 헤더: Host(서버 도메인), Accept(수용 미디어 타입), Authorization(인증 정보), Cookie(쿠키). 응답 헤더: Content-Type(응답 미디어 타입), Set-Cookie(쿠키 설정), Cache-Control(캐시 정책), Location(리다이렉트 URL). 공통: Content-Length(본문 크기).", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 14, 'HTTPS와 TLS', 'quiz', '{
  "questions": [
    {"question": "HTTPS와 HTTP의 차이점으로 올바른 것은?", "code": null, "options": ["HTTPS는 UDP를 사용하고 HTTP는 TCP를 사용", "HTTPS는 TLS/SSL로 암호화되고 HTTP는 평문으로 전송", "HTTPS는 포트 80, HTTP는 포트 443 사용", "HTTPS는 요청-응답 방식이 아닌 스트리밍 방식 사용"], "correct_index": 1, "explanation": "HTTPS(HTTP Secure)는 HTTP에 TLS(Transport Layer Security) 암호화를 적용한 프로토콜이다. 443번 포트를 사용하며 데이터 기밀성, 무결성, 서버 인증을 제공한다. HTTP는 80번 포트를 사용하며 평문으로 전송된다."},
    {"question": "TLS 핸드셰이크 과정에서 대칭키를 안전하게 교환하기 위해 사용하는 방식은?", "code": null, "options": ["MD5 해시 알고리즘", "비대칭키(공개키) 암호화 또는 Diffie-Hellman 키 교환", "AES 대칭키 암호화", "단순 XOR 암호화"], "correct_index": 1, "explanation": "TLS 핸드셰이크에서는 비대칭키(RSA 등) 또는 Diffie-Hellman(ECDHE 등) 알고리즘으로 세션 키(대칭키)를 안전하게 교환한다. 실제 데이터 전송은 교환된 대칭키(AES 등)로 암호화한다."},
    {"question": "SSL/TLS 인증서에 포함된 주요 정보가 아닌 것은?", "code": null, "options": ["서버의 공개키", "인증 기관(CA)의 서명", "서버의 개인키", "인증서 유효 기간"], "correct_index": 2, "explanation": "SSL/TLS 인증서에는 서버의 공개키, 서버 도메인 정보, 인증 기관(CA)의 디지털 서명, 유효 기간 등이 포함된다. 서버의 개인키는 서버에만 비밀로 보관되며 절대 인증서에 포함되지 않는다."},
    {"question": "인증 기관(CA, Certificate Authority)의 역할은?", "code": null, "options": ["서버와 클라이언트 간 데이터를 중계", "SSL/TLS 인증서의 신뢰성을 보증하고 발급하는 제3자 기관", "네트워크 트래픽을 암호화하는 하드웨어", "도메인 이름을 IP 주소로 변환하는 서버"], "correct_index": 1, "explanation": "CA는 서버의 신원을 검증하고 디지털 인증서를 발급하는 신뢰할 수 있는 제3자 기관이다. 브라우저는 신뢰하는 CA 목록을 내장하고 있어, 해당 CA가 서명한 인증서를 신뢰한다. DigiCert, Let''s Encrypt 등이 대표적인 CA이다."},
    {"question": "TLS 1.3이 이전 버전보다 개선된 점은?", "code": null, "options": ["RC4 암호화 알고리즘 추가 지원", "핸드셰이크 라운드 트립 감소(1-RTT, 0-RTT 지원), 취약 알고리즘 제거", "서버 인증 제거로 성능 향상", "UDP 기반으로 변경"], "correct_index": 1, "explanation": "TLS 1.3은 핸드셰이크를 1-RTT로 단축하고 0-RTT 재연결을 지원한다. MD5, SHA-1, RC4 등 취약한 알고리즘을 제거하고 순방향 비밀성(Forward Secrecy)을 기본으로 요구한다."}
  ]
}', 720),

('c1000000-0000-0000-0000-000000000003', 15, 'DNS', 'fill_blank', '{
  "questions": [
    {"question": "DNS(Domain Name System)의 역할로 올바른 것은?", "code": "www.example.com → ___", "options": ["IP 주소로 변환", "MAC 주소로 변환", "포트 번호로 변환", "URL 경로로 변환"], "correct_index": 0, "explanation": "DNS는 사람이 기억하기 쉬운 도메인 이름(www.example.com)을 컴퓨터가 사용하는 IP 주소(93.184.216.34)로 변환하는 분산 데이터베이스 시스템이다. UDP 53번 포트를 주로 사용한다."},
    {"question": "DNS 재귀 질의(Recursive Query)에서 클라이언트가 요청을 보내는 대상은?", "code": "클라이언트 → ___ DNS 서버 → 루트/TLD/권한 DNS 서버 순으로 조회", "options": ["로컬(리졸버) DNS 서버", "루트 DNS 서버", "TLD DNS 서버", "권한 DNS 서버"], "correct_index": 0, "explanation": "재귀 질의에서 클라이언트는 로컬(리졸버) DNS 서버에만 요청한다. 로컬 DNS 서버가 루트 → TLD → 권한 DNS 서버를 순서대로 질의하여 최종 IP를 클라이언트에게 반환한다."},
    {"question": "DNS 반복 질의(Iterative Query)의 특징은?", "code": "DNS 서버: ''모르면 ___ 서버에 직접 물어보세요'' 응답", "options": ["다른", "같은", "상위", "루트"], "correct_index": 0, "explanation": "반복 질의에서 DNS 서버는 모르는 경우 직접 찾아주지 않고, 다음으로 물어볼 서버 주소를 응답한다. 클라이언트(또는 로컬 DNS 서버)가 각 단계마다 해당 서버에 직접 질의해야 한다."},
    {"question": "DNS 캐싱(Caching)에서 TTL(Time To Live)의 역할은?", "code": "TTL = ___초 동안 캐시 유지", "options": ["캐시 유효 시간을 초 단위로 지정", "패킷의 최대 홉 수를 지정", "연결 타임아웃 시간을 지정", "암호화 키의 유효 기간을 지정"], "correct_index": 0, "explanation": "TTL은 DNS 응답을 캐시에 보관할 수 있는 시간(초)을 나타낸다. TTL이 만료되면 캐시를 삭제하고 다시 DNS 서버에 질의한다. TTL을 짧게 설정하면 변경 반영이 빠르고, 길게 설정하면 DNS 서버 부하가 줄어든다."},
    {"question": "DNS 레코드 타입 중 도메인을 IP 주소로 매핑하는 타입은?", "code": "example.com → 93.184.216.34 (타입: ___ 레코드)", "options": ["A", "CNAME", "MX", "NS"], "correct_index": 0, "explanation": "A 레코드는 도메인 이름을 IPv4 주소로 매핑한다. AAAA 레코드는 IPv6 주소로 매핑, CNAME은 도메인 별칭, MX는 메일 서버, NS는 네임 서버를 지정한다."}
  ]
}', 720),

('c1000000-0000-0000-0000-000000000003', 16, '쿠키와 세션', 'quiz', '{
  "questions": [
    {"question": "HTTP가 무상태(Stateless) 프로토콜인 이유는?", "code": null, "options": ["속도가 빠르기 때문에 의도적으로 설계", "각 요청이 이전 요청과 독립적으로, 서버가 상태를 저장하지 않음", "보안을 위해 연결을 즉시 종료하기 때문", "TCP 기반이기 때문"], "correct_index": 1, "explanation": "HTTP는 기본적으로 각 요청-응답이 독립적이며, 서버는 클라이언트의 이전 요청 상태를 기억하지 않는다. 이를 극복하기 위해 쿠키, 세션, JWT 등의 상태 관리 기법을 사용한다."},
    {"question": "쿠키(Cookie)와 세션(Session)의 가장 큰 차이점은?", "code": null, "options": ["쿠키: 서버에 저장, 세션: 클라이언트에 저장", "쿠키: 클라이언트(브라우저)에 저장, 세션: 서버에 저장", "쿠키: 암호화 필수, 세션: 평문 저장", "쿠키: 로그인에만 사용, 세션: 모든 데이터에 사용"], "correct_index": 1, "explanation": "쿠키는 클라이언트(브라우저)에 텍스트 파일로 저장되고, 세션은 서버에 저장된다. 세션 ID만 쿠키로 클라이언트에 전달하여 서버의 세션 데이터를 식별한다."},
    {"question": "Set-Cookie 헤더의 HttpOnly 속성의 역할은?", "code": null, "options": ["쿠키를 HTTPS에서만 전송", "JavaScript로 쿠키 접근을 차단하여 XSS 공격 방어", "쿠키의 유효 도메인을 제한", "쿠키를 HTTP GET 요청에서만 전송"], "correct_index": 1, "explanation": "HttpOnly 속성은 JavaScript의 document.cookie를 통한 쿠키 접근을 차단한다. XSS(Cross-Site Scripting) 공격으로 쿠키가 탈취되는 것을 방지한다. Secure 속성은 HTTPS에서만 쿠키를 전송하도록 제한한다."},
    {"question": "세션 하이재킹(Session Hijacking)이란?", "code": null, "options": ["서버에서 세션을 강제 삭제하는 것", "공격자가 유효한 세션 ID를 탈취하여 인증된 사용자로 위장하는 공격", "세션 만료 시간을 연장하는 기법", "다중 서버 간 세션을 공유하는 기법"], "correct_index": 1, "explanation": "세션 하이재킹은 공격자가 네트워크 스니핑, XSS 등으로 세션 ID를 탈취하여 정상 사용자인 척 서버에 요청하는 공격이다. HTTPS 사용, HttpOnly/Secure 쿠키 설정, 세션 만료 시간 설정으로 방어할 수 있다."},
    {"question": "쿠키의 SameSite 속성이 방어하는 공격은?", "code": null, "options": ["SQL 인젝션", "CSRF(Cross-Site Request Forgery)", "DDoS 공격", "버퍼 오버플로우"], "correct_index": 1, "explanation": "SameSite 속성은 크로스 사이트 요청 시 쿠키 전송을 제한하여 CSRF 공격을 방어한다. Strict: 동일 사이트 요청에만 쿠키 전송. Lax: GET 방식 크로스 사이트 요청에는 허용. None: 제한 없음(Secure 필수)."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 17, 'REST API', 'flashcard', '{
  "cards": [
    {"front": "REST(Representational State Transfer)란?", "back": "웹 서비스 설계를 위한 아키텍처 스타일. HTTP 프로토콜을 기반으로 자원(Resource)을 URI로 표현하고, HTTP 메서드로 자원에 대한 행위를 정의한다. 6가지 제약 조건을 따르는 서비스를 RESTful 하다고 한다.", "hint": null},
    {"front": "REST의 6가지 제약 조건은?", "back": "1. 클라이언트-서버 분리. 2. 무상태(Stateless): 각 요청은 독립적. 3. 캐시 가능(Cacheable). 4. 계층화 시스템(Layered System). 5. 인터페이스 일관성(Uniform Interface). 6. 코드 온 디맨드(선택적): 서버가 실행 가능한 코드 전송 가능.", "hint": null},
    {"front": "RESTful URI 설계 원칙은?", "back": "1. 리소스는 명사(복수형)로: /users, /articles. 2. 행위는 HTTP 메서드로 표현. 3. 계층은 슬래시로 구분: /users/123/posts. 4. 파일 확장자 미사용. 5. 소문자, 하이픈(-) 사용. 잘못된 예: /getUser, /deleteArticle123.", "hint": null},
    {"front": "멱등성(Idempotency)이란?", "back": "동일한 요청을 여러 번 수행해도 결과가 동일한 성질. HTTP 메서드별 멱등성: 멱등 O - GET, HEAD, PUT, DELETE, OPTIONS. 멱등 X - POST, PATCH. 멱등성은 네트워크 오류 시 안전하게 재시도할 수 있는지 판단 기준이 된다.", "hint": null},
    {"front": "REST API 응답 상태 코드 활용 예시는?", "back": "GET 성공: 200 OK. POST 생성 성공: 201 Created. 수정/삭제 후 반환 없음: 204 No Content. 잘못된 요청: 400 Bad Request. 인증 필요: 401 Unauthorized. 권한 없음: 403 Forbidden. 리소스 없음: 404 Not Found. 서버 오류: 500 Internal Server Error.", "hint": null}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 18, 'WebSocket', 'quiz', '{
  "questions": [
    {"question": "WebSocket이 HTTP와 다른 가장 큰 특징은?", "code": null, "options": ["UDP 기반 프로토콜", "서버와 클라이언트 간 양방향 지속 연결 지원", "암호화를 기본으로 지원", "더 빠른 초기 연결 속도"], "correct_index": 1, "explanation": "WebSocket은 HTTP와 달리 한 번 연결이 수립되면 서버와 클라이언트 모두 언제든지 데이터를 전송할 수 있는 양방향(Full-Duplex) 지속 연결을 제공한다. 실시간 통신이 필요한 서비스에 적합하다."},
    {"question": "WebSocket 연결은 어떻게 시작되는가?", "code": null, "options": ["UDP 소켓 연결로 시작", "HTTP 업그레이드 핸드셰이크로 시작", "TLS 핸드셰이크 후 바로 시작", "DNS 조회 후 직접 연결"], "correct_index": 1, "explanation": "WebSocket 연결은 HTTP 요청의 Upgrade 헤더를 통해 시작된다. 클라이언트가 ''Upgrade: websocket'' 헤더와 함께 HTTP 요청을 보내고, 서버가 101 Switching Protocols로 응답하면 WebSocket 연결이 수립된다."},
    {"question": "WebSocket이 적합한 사용 사례가 아닌 것은?", "code": null, "options": ["실시간 채팅 서비스", "주식 시세 실시간 업데이트", "온라인 멀티플레이어 게임", "블로그 게시물 조회"], "correct_index": 3, "explanation": "블로그 게시물 조회는 단순 요청-응답 패턴으로 HTTP REST API가 적합하다. WebSocket은 실시간 채팅, 주가 업데이트, 온라인 게임, 협업 도구 등 서버에서 클라이언트로 지속적인 데이터 푸시가 필요한 경우에 사용한다."},
    {"question": "Server-Sent Events(SSE)와 WebSocket의 차이점은?", "code": null, "options": ["SSE: 양방향 통신, WebSocket: 단방향 통신", "SSE: 서버→클라이언트 단방향, WebSocket: 양방향 통신", "SSE: UDP 기반, WebSocket: TCP 기반", "SSE: 실시간 통신 불가, WebSocket: 실시간 통신 가능"], "correct_index": 1, "explanation": "SSE는 서버에서 클라이언트로의 단방향 스트리밍을 HTTP 위에서 제공한다. WebSocket은 양방향 통신을 지원한다. SSE는 뉴스 피드, 알림 등 서버 푸시만 필요한 경우, WebSocket은 채팅 등 양방향이 필요한 경우에 적합하다."},
    {"question": "WebSocket 프로토콜의 기본 포트 번호는?", "code": null, "options": ["ws://: 80, wss://: 443", "ws://: 8080, wss://: 8443", "ws://: 3000, wss://: 3443", "ws://: 9000, wss://: 9443"], "correct_index": 0, "explanation": "WebSocket의 URI 스킴은 ws://(비암호화)와 wss://(TLS 암호화)이다. ws://는 HTTP와 같은 80번 포트, wss://는 HTTPS와 같은 443번 포트를 기본으로 사용한다. 방화벽 통과가 용이한 장점이 있다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 19, 'CDN과 로드밸런싱', 'quiz', '{
  "questions": [
    {"question": "CDN(Content Delivery Network)의 주된 목적은?", "code": null, "options": ["서버의 보안을 강화하기 위해", "전 세계 엣지 서버에 콘텐츠를 캐싱하여 지연 시간 감소", "데이터베이스 쿼리를 최적화하기 위해", "서버 간 데이터를 동기화하기 위해"], "correct_index": 1, "explanation": "CDN은 사용자와 지리적으로 가까운 엣지(PoP) 서버에 정적 콘텐츠(이미지, CSS, JS 등)를 캐싱하여 원본 서버까지의 왕복 시간을 줄이고 빠른 응답을 제공한다. AWS CloudFront, Cloudflare, Akamai 등이 대표적이다."},
    {"question": "로드밸런서(Load Balancer)의 역할은?", "code": null, "options": ["서버 간 파일을 동기화", "여러 서버에 트래픽을 분산하여 단일 장애점 방지 및 성능 향상", "서버의 CPU 사용률을 모니터링", "데이터베이스 연결을 관리"], "correct_index": 1, "explanation": "로드밸런서는 클라이언트의 요청을 여러 서버에 분산하여 특정 서버의 과부하를 방지하고, 서버 장애 시 트래픽을 다른 서버로 자동 전환하여 고가용성을 제공한다."},
    {"question": "L4 로드밸런서와 L7 로드밸런서의 차이점은?", "code": null, "options": ["L4: 응용 계층 기반 분산, L7: 전송 계층 기반 분산", "L4: IP/포트 기반 분산, L7: HTTP 헤더/URL/쿠키 기반 분산", "L4: 더 많은 기능 제공, L7: 단순 분산만 가능", "L4: 소프트웨어, L7: 하드웨어 방식"], "correct_index": 1, "explanation": "L4 로드밸런서는 전송 계층(TCP/UDP)의 IP와 포트 정보를 기반으로 분산한다. L7 로드밸런서는 응용 계층(HTTP)의 헤더, URL 경로, 쿠키 등을 분석하여 더 세밀한 분산이 가능하다. L7이 기능은 더 많지만 처리 오버헤드가 크다."},
    {"question": "로드밸런싱 알고리즘 중 라운드 로빈(Round Robin)의 특징은?", "code": null, "options": ["현재 연결 수가 가장 적은 서버에 분산", "서버를 순서대로 돌아가며 균등하게 분산", "서버의 응답 시간에 따라 동적 분산", "클라이언트 IP를 해싱하여 항상 같은 서버로 분산"], "correct_index": 1, "explanation": "라운드 로빈은 서버 목록을 순서대로 순환하며 요청을 균등하게 분배하는 가장 단순한 알고리즘이다. 서버 성능이 동일할 때 효과적이다. 가중 라운드 로빈은 서버 성능에 따라 가중치를 부여할 수 있다."},
    {"question": "세션 지속성(Session Persistence, Sticky Session)이 필요한 이유는?", "code": null, "options": ["서버 부하를 균등하게 분산하기 위해", "사용자가 항상 같은 서버에 연결되어 세션 데이터 일관성 유지", "서버 장애 시 자동으로 다른 서버로 전환", "CDN 캐시를 최신 상태로 유지"], "correct_index": 1, "explanation": "세션 데이터가 특정 서버에만 저장되는 경우, 같은 사용자의 요청이 항상 같은 서버로 전달되어야 세션 일관성이 유지된다. 단, 특정 서버에 부하가 집중될 수 있으므로 Redis 같은 중앙 세션 저장소를 사용하는 것이 더 권장된다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000003', 20, '네트워크 종합', 'quiz', '{
  "questions": [
    {"question": "사용자가 브라우저에 ''https://www.example.com''을 입력했을 때 일어나는 과정을 순서대로 나열한 것은?", "code": null, "options": ["DNS 조회 → TCP 연결 → TLS 핸드셰이크 → HTTP 요청 → HTTP 응답", "TCP 연결 → DNS 조회 → TLS 핸드셰이크 → HTTP 요청 → HTTP 응답", "TLS 핸드셰이크 → DNS 조회 → TCP 연결 → HTTP 요청 → HTTP 응답", "DNS 조회 → HTTP 요청 → TCP 연결 → TLS 핸드셰이크 → HTTP 응답"], "correct_index": 0, "explanation": "1. DNS로 www.example.com의 IP 조회. 2. 해당 IP의 443 포트로 TCP 3-way handshake. 3. TLS 핸드셰이크로 암호화 채널 수립. 4. HTTP GET 요청 전송. 5. 서버가 HTTP 응답 반환. 이 전 과정에 ARP, 라우팅 등도 포함된다."},
    {"question": "192.168.1.100/24 호스트에서 8.8.8.8로 패킷을 전송할 때 올바른 설명은?", "code": null, "options": ["같은 서브넷이므로 ARP로 직접 전송", "다른 네트워크이므로 기본 게이트웨이(라우터)를 통해 전송", "브로드캐스트로 전체 네트워크에 전송", "DNS 서버를 통해 경로를 조회한 후 전송"], "correct_index": 1, "explanation": "8.8.8.8은 192.168.1.0/24 서브넷 외부의 IP이다. 다른 네트워크로의 패킷은 기본 게이트웨이(라우터)로 전달된다. 호스트는 ARP로 게이트웨이의 MAC 주소를 얻어 패킷을 게이트웨이로 전송하면, 라우터가 이후 경로를 처리한다."},
    {"question": "다음 중 연결 설정 없이 바로 데이터를 전송하는 프로토콜 조합은?", "code": null, "options": ["TCP + HTTP", "UDP + DNS", "TCP + HTTPS", "TCP + FTP"], "correct_index": 1, "explanation": "DNS는 주로 UDP를 사용하며 비연결형으로 바로 요청을 보낸다(짧은 메시지 특성). TCP를 사용하는 HTTP, HTTPS, FTP는 모두 3-way handshake로 연결을 수립한 후 데이터를 전송한다."},
    {"question": "다음 포트 번호와 프로토콜 매핑 중 올바르지 않은 것은?", "code": null, "options": ["HTTP: 80, HTTPS: 443", "DNS: 53, DHCP: 67/68", "SSH: 22, FTP: 21", "SMTP: 25, POP3: 110, IMAP: 143"], "correct_index": 3, "explanation": "모든 보기가 올바르다. HTTP:80, HTTPS:443, DNS:53, DHCP:67(서버)/68(클라이언트), SSH:22, FTP:21(제어)/20(데이터), SMTP:25, POP3:110, IMAP:143은 모두 표준 포트 번호이다."},
    {"question": "네트워크 보안에서 방화벽(Firewall)과 IDS/IPS의 차이점은?", "code": null, "options": ["방화벽: 패킷 내용 분석 및 탐지, IDS/IPS: IP/포트 기반 차단", "방화벽: IP/포트 규칙 기반 차단, IDS/IPS: 트래픽 패턴 분석으로 침입 탐지/차단", "방화벽: 응용 계층만 검사, IDS/IPS: 네트워크 계층만 검사", "방화벽과 IDS/IPS는 동일한 기능을 수행"], "correct_index": 1, "explanation": "방화벽은 IP 주소, 포트, 프로토콜 규칙에 따라 패킷을 허용/차단한다. IDS(침입 탐지 시스템)는 의심스러운 트래픽 패턴을 탐지하여 경고하고, IPS(침입 방지 시스템)는 탐지 후 자동으로 차단까지 수행한다."}
  ]
}', 900);
