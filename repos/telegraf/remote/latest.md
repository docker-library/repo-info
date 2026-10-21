## `telegraf:latest`

```console
$ docker pull telegraf@sha256:074419740e5b702f2f358262c1e3036ec1e9c09e0d0eef388dff7ed838dea202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:bacd6eaed5f6586e095101a2533bb06fcee37bd842d2c645fdc9265844ab825e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.4 MB (180392107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd76b77a421ae0174a6eeed9794bbfa2add6b76056ed9cb655a97ff84449443`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:41:47 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:41:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:41:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:41:52 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:41:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f3510f14ae1203443980e2b03e3c4adb950f89becd0189ad5032562ef49ea0`  
		Last Modified: Wed, 21 Oct 2026 00:46:13 GMT  
		Size: 23.9 MB (23871736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a3b580249d83ee0b51bb931b3342de6f62d58ed6defa5dc81bc219ebbc21e9`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 19.3 MB (19290731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8991750fb0796f258d020a1b8d2e0579b17cb80e7abb5eac893147bd54ee0972`  
		Last Modified: Wed, 21 Oct 2026 01:42:14 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcec5d7aaa9cb7549e35d7a26b0fdbd6a8e590b0f8ecadfdc402f083e8da2233`  
		Last Modified: Wed, 21 Oct 2026 01:42:17 GMT  
		Size: 88.7 MB (88701859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ca0e093695b8a3b0a9c779023d3b22fe7ba7ba7d195dc9fcee4c26cf1cf9ee`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:306527f0a14becbdeb375b23444222c5d72cebb1d9cea7af08c9bfb3cd10d5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6704782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7dc7beaf133efaeb506bb6740a9d37af31e0b173f785ca23af248b03bd69860`

```dockerfile
```

-	Layers:
	-	`sha256:6f96b081c091a08d0097eabae205e557f75b12b74a144f2a37a3badc5175fa6a`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 6.7 MB (6690012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9f3b3c568e560d3417b7afd9de5bbdc9de4aa2c9d23b8f2a3b8ba1bd400c418`  
		Last Modified: Wed, 21 Oct 2026 01:42:15 GMT  
		Size: 14.8 KB (14770 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:09c93336e2b1a70d8f6d76a964f4cbc0fa762c462c0f2453d1c7e41401b544cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166483004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6451cc7191e0d8f6915bdc8439374211e8336934c106a070b2c9d345c1d10bfe`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 02:49:10 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 02:49:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 02:49:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 02:49:17 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 02:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0e6c3aa2596e24d9a17b151f95f8e195e564ddb757b91b91b71a17fcb3d66860`  
		Last Modified: Tue, 20 Oct 2026 23:29:51 GMT  
		Size: 44.2 MB (44219795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad4f19b42174763c21417798727f47dfa19a991678ae80c71f307fc6d78c84e`  
		Last Modified: Wed, 21 Oct 2026 01:28:56 GMT  
		Size: 21.8 MB (21768455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:839d137ca8838be9eb428c3ae923b8553bd8832b0d93f04f9d9c1fa024ba35f5`  
		Last Modified: Wed, 21 Oct 2026 02:49:39 GMT  
		Size: 18.0 MB (17961296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde9e36c07e06747134cf12319f134df5cdf2f9b84a2637b811140c0c4a199a8`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 5.1 KB (5071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce2775a7bc5ee0ee205d3be697ce781ff756e850f41c907b23152ed25e9efe3`  
		Last Modified: Wed, 21 Oct 2026 02:49:40 GMT  
		Size: 82.5 MB (82527745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eafdc6c4f53f5a1e48936ca54066a442145272755eb92967d01c2bb3436c1d0`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 642.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:287cd98f6f8c94645af19f3e72f4908590d813dda2f335b9d8a1eb74c999b35e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6700290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155a8adc175c9de794a4bee2d84bb90a8b65566b702c73abbcb3511977724c87`

```dockerfile
```

-	Layers:
	-	`sha256:c66e782135b56157f893d20dc3ae076d539ef6010ffff0700a8920aae928de56`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 6.7 MB (6685422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7eedb0213deaa00f061702dc89d6a222d049af556d6dc64285e3a3cdd7bb5e`  
		Last Modified: Wed, 21 Oct 2026 02:49:38 GMT  
		Size: 14.9 KB (14868 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:51bc07a5af5f71bd3ca37933038edccadde838357841c55775b4cf3280d7db2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170284116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d23b26453edae2f9288f320cffd2d1f32175ea83689c461eb8e5c9d5f82e898`
-	Entrypoint: `["\/usr\/bin\/tini","--","\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:18 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin tini &&     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 01:49:19 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENV TELEGRAF_VERSION=1.40.2
# Wed, 21 Oct 2026 01:49:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Wed, 21 Oct 2026 01:49:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 01:49:58 GMT
ENTRYPOINT ["/usr/bin/tini" "--" "/entrypoint.sh"]
# Wed, 21 Oct 2026 01:49:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb1b620bf2b62e66c0d3dc56c355947e95ede0e1f00fd7c3c9d37e3db15a29`  
		Last Modified: Wed, 21 Oct 2026 00:49:43 GMT  
		Size: 23.4 MB (23438928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee447eaaf9c7a1234609e41baec1c0ae59924917e29d637b63b7dbc56135d32f`  
		Last Modified: Wed, 21 Oct 2026 01:49:42 GMT  
		Size: 19.2 MB (19194232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90b74760596bf6a87e0d5d647ccc1916662b38fe5336d9355aa0a3519ff4cdd`  
		Last Modified: Wed, 21 Oct 2026 01:49:40 GMT  
		Size: 5.1 KB (5070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9b81d1588f45e8100f08d44a151edf411beee445f4f606a7f25534ae883f1`  
		Last Modified: Wed, 21 Oct 2026 01:50:17 GMT  
		Size: 79.2 MB (79242134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f068efaa6ef9104ac1316678acf258cb7bec27476641476480800e656893fa61`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 641.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:ae2d4378077edc935418fb68a8768f6e2d3679e18ba75785115a4a580f67e197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6705592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9e9f45286c4b65c5de8c8a96922c1f7f2b2ca008b8bf61a6d56416666fe5a6`

```dockerfile
```

-	Layers:
	-	`sha256:42bddf15dfa63ba33fb2a95e70efbdb539259afd1a467df68e38693edfcea1ac`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 6.7 MB (6690700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:022ad264279c7f297147040b5f1d4c9612e5cd245e1e4e1405293615dd883b27`  
		Last Modified: Wed, 21 Oct 2026 01:50:15 GMT  
		Size: 14.9 KB (14892 bytes)  
		MIME: application/vnd.in-toto+json
