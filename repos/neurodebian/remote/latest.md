## `neurodebian:latest`

```console
$ docker pull neurodebian@sha256:88915a90b5726404f08b6163ab4a11d953f22b851dd9bc0bb37a81d9c01efc6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `neurodebian:latest` - linux; amd64

```console
$ docker pull neurodebian@sha256:f6e5055393a816e6545cec22c90301632be214a80a636775067b6207a7536884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.7 MB (59699967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c570dbfa7cd7e8b170fe7d4a22f96697f3f14a5abcf051a85b02db7da6e8e407`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Tue, 14 Jul 2026 01:47:10 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Tue, 14 Jul 2026 01:47:12 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb7125a2b97bfd874ed48edbeceda28a113fc6368ba2f8c422f1d26985ffe9a`  
		Last Modified: Tue, 14 Jul 2026 01:47:21 GMT  
		Size: 10.3 MB (10294093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112c1141260149b45373e70becbf01aaccfbe567d9ef1f261b65bd87149577db`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 2.6 KB (2632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832854fa910eeec01982a3a64d64afb01c7a754f16d16eda6a8180d66b5e33c`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 271.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d63138f0f8ad09a95dbab1c8257f2178bce09e1e0926c0eae78d478be61ff706`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 90.4 KB (90399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:be38e98eb1ea7f87546ce0258811eb7c3ad54b903650d103a037131dc380b37c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3628469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82f3317f89d2617feb6ef969223eb41ab18dac19fb00c8ce2a32e2605cbd1de`

```dockerfile
```

-	Layers:
	-	`sha256:c7661a9f2771fd7d85ac39744fef5f13079f848f19cb1c7e8f5fd84d4ead53a9`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 3.6 MB (3614218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8bc4f26daa58f0175ef3affec27ca16f18c3424f24fa3b15fc41cad5124b4333`  
		Last Modified: Tue, 14 Jul 2026 01:47:20 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:214b0f39d53624da138c99df2ae6004cefd65577bbf2848458cef8cdd3aa54a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.9 MB (59851645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ba079b79b4d865948d9ceb8da4d6e9e5b84e3ae46854298eef670ddf1f9a1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:48:35 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:48:39 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:c8a311258fd162f6aa0db134045a19154c81a2244ff9ed7620256c95ae5d6b69`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 49.7 MB (49678395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1a7f562d848861daa5ce8c7b529efa9e26077c1a7bace0dbce7e858c5c3cca`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 10.1 MB (10079284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6c7612a7d09bd33183e501a919315d65730599fe7de17b9a704e333f2e5d3f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 2.6 KB (2633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b0105f2108a660e230e37d221188bb39a711a6a45e68872b613afc681581e0`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 270.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e8ed006c01192d6075abaf0e641ff7f7fdbeff453366cebe462e8559b4726f`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 91.1 KB (91063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ff2e370c6559d65c19b669049700cd0cd027bf25243f5d94472aed33a74a5cce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3629442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57ea9a55c09ec45e1c2dfcd13c1cdfc228fd1703d6690cbb1fa92fd1e4091048`

```dockerfile
```

-	Layers:
	-	`sha256:3a50dd895d5961d343c85f2e9094f6b8729984c5cbd850601d717674ef904c08`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 3.6 MB (3615054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8252792a9a1122c7cf8d4163439c82d9111f90ee14dc23347013697eef22d530`  
		Last Modified: Wed, 24 Jun 2026 01:48:47 GMT  
		Size: 14.4 KB (14388 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:latest` - linux; 386

```console
$ docker pull neurodebian@sha256:573a601ea7279fab65fc6fe6422a964ec60f5e60105d8b7354b68939b379ee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61397467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379de8bd00b23c78dea6a6a51e246ae3f136bf31557f659ea66b3acf7febfe3a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:45:16 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Wed, 24 Jun 2026 01:45:17 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian trixie main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel trixie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Wed, 24 Jun 2026 01:45:21 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
```

-	Layers:
	-	`sha256:ae12c2ff3fb5df23b854f2a97ab858f54bb2f71491a9276fddf8be7e76d3182a`  
		Last Modified: Wed, 24 Jun 2026 00:28:34 GMT  
		Size: 50.8 MB (50835655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc384a594a22fb9cba56083166ad92415a8fae6492493635cb669e15a58ddaaf`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 10.5 MB (10468181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7be72cac78f9fab2e737c59dc780b7780871b6e29b62d1b92978fd80a032dd`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a708ed2acd10ec87ffd95e4b7a78040549e6d8f8f769a9c8590332b707c6c59`  
		Last Modified: Wed, 24 Jun 2026 01:45:28 GMT  
		Size: 269.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee0ef2f2196a75b0ed4c3653f4d00c734d4734b5b5a19da2228001ce8faf2e5`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 90.7 KB (90725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:latest` - unknown; unknown

```console
$ docker pull neurodebian@sha256:dab603aa6079873cf14cd5f527c89f7d55b8ef5e888a0fd0914e5155dffdd3fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3626330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fcccc3dee48c489342bdad20dd8c7184cb11b1c856bbc8bdc79a16e47c2e80`

```dockerfile
```

-	Layers:
	-	`sha256:5e41957067f4a372f31992f1bbcd915c968d7de001e8c4b280e6418adac85b01`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 3.6 MB (3612112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:721c0b75c262861c763fd019b92bc2eb3337333b69a48333693656477714ebac`  
		Last Modified: Wed, 24 Jun 2026 01:45:29 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.in-toto+json
