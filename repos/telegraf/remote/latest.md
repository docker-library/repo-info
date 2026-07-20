## `telegraf:latest`

```console
$ docker pull telegraf@sha256:49899960eccad39415b91cf654324f0bb7efddaef8f1aa3ec24e2d8c6e19618e
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
$ docker pull telegraf@sha256:a4ed235aa676a0d930630285d2ef68ee0abf138849c78b73429f182600dd3eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.6 MB (175553054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f3ac10114f632ad9e42c4c86c7f46d1abecc609b154ba429553d4f405b03d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:43:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:51 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:45:52 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:45:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:45:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:45:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:45:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0ec93c9c52acfa7f522ce201898ba8ebdf67a6d01c6a4ea70e8d413dbc534a`  
		Last Modified: Tue, 14 Jul 2026 01:43:26 GMT  
		Size: 24.0 MB (24044100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf1ccd6ca564b5311f8953c779659dbec09957236b14008fb2b8b9a4eddfef9`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 18.9 MB (18944472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26bd4857163c57c4e24a397e05f73944909171ea8c98128d516cbac4b2dfff6b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec44f0db8184c447f8e2aa477430e9c291d32e91f546df7c22574d94893b2c29`  
		Last Modified: Mon, 20 Jul 2026 22:46:18 GMT  
		Size: 84.1 MB (84061399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4566a99a7002edf55fc873eefcd1be35417fc980ffbdb270939d4efd45dd8b`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 625.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:28aa3fa31b0d608a14ea93f0de4beb6da7b6578a53f52c052828ed2c210a1c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6701369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59603b8648481fe3480a1c7d26055e59142a57935d3bdcde582a6b8972d1af3f`

```dockerfile
```

-	Layers:
	-	`sha256:907862c13cd59df3e57829bbd824041871553d6859f5b33f44b41f6ee5b7f7de`  
		Last Modified: Mon, 20 Jul 2026 22:46:16 GMT  
		Size: 6.7 MB (6686640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6e8bbe8e27cbe30be3c6990ec8ca8f2b01e30e52db2f123d6741be63fecc95f`  
		Last Modified: Mon, 20 Jul 2026 22:46:15 GMT  
		Size: 14.7 KB (14729 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:2811ebbf700b3ae2d70ceb031d24db2d34ff8d08a05101ee6db67eebca2c421c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162025353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e54b0e9c5e2623eb3b5786eb4a6593a527bce022c96050a3d54dd15945dbc52`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:12 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:01:13 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 23:01:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 23:01:18 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 23:01:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 23:01:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:f08ce4a309195cc7b461516684fc0628d56fd465c538e7c129a9eecab47df45a`  
		Last Modified: Tue, 14 Jul 2026 00:13:47 GMT  
		Size: 44.2 MB (44203181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1132f9cb1292797584a716d4e35906092ffde6a92ac73ad7e53bf2011c37fd7c`  
		Last Modified: Tue, 14 Jul 2026 02:29:25 GMT  
		Size: 22.0 MB (21950005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d3e7ef9f1fe2d663384997fe637dcb4b0d5e17cb6e20862de7a3371b382da8`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 17.7 MB (17699643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340dbd8e1c7899805f9ac81ecc1c1bb145815371b394c9b4cf1d71c6854edbde`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 5.1 KB (5069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2057b91bbc43910f82ac22a0289c348fda341bbb0ed5eee5a73d19c83d5f1eeb`  
		Last Modified: Mon, 20 Jul 2026 23:01:37 GMT  
		Size: 78.2 MB (78166831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa96691afbed8dbdf99559cfff22934b948165902fc1a676b3578909d601680`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:f883890629c0e5127e6e2e0aa1f0d5e402e474ef44b816106e0451e340acb832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6696877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c93f6c1d833c812ac3b72851eb8d1049c8a100e42c054870edd2eb34ed790ac9`

```dockerfile
```

-	Layers:
	-	`sha256:49f03933f83b179234ceb72f31e6bf2484d9bdd70a7dcc28b651a5cf7a6c2cfe`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 6.7 MB (6682050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81c4d2fc2b5f9a5cbe017a37d3cf9a837344fd28344d7da917ee14c6754885ec`  
		Last Modified: Mon, 20 Jul 2026 23:01:35 GMT  
		Size: 14.8 KB (14827 bytes)  
		MIME: application/vnd.in-toto+json

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:0ee8da854462a66e1fbec6cb4807c17800f62f533b9b4ab69928ed64ec51908c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (166018961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290fc055b7387ec3366c1512593f371ca5f0ff2fc0145e97bed7e09d6f64f8cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:46:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		curl 		gnupg 		netbase 		sq 		wget 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors libcap2-bin &&     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:48:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENV TELEGRAF_VERSION=1.39.2
# Mon, 20 Jul 2026 22:48:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb* # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
EXPOSE map[8092/udp:{} 8094/tcp:{} 8125/udp:{}]
# Mon, 20 Jul 2026 22:48:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 20 Jul 2026 22:48:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 20 Jul 2026 22:48:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb3bfe7e3c6a92e1bda6d3ddde9de882610239eba4323fd75d10ba1bccee7876`  
		Last Modified: Tue, 14 Jul 2026 01:46:42 GMT  
		Size: 23.6 MB (23612703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28dd63374dfdf84fd2496671ef85589c28022b7623b482018289ce5c0422aa13`  
		Last Modified: Mon, 20 Jul 2026 22:48:38 GMT  
		Size: 18.9 MB (18885811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75143be5ec235865e8078754d3a95ae38e5932f41bd459a936a632ed8372138`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 5.1 KB (5074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d459756aa161004e37d8684132d7b86928c63ff479d27013099f20678c66c33`  
		Last Modified: Mon, 20 Jul 2026 22:48:39 GMT  
		Size: 75.1 MB (75131060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1c09c137418452ad267d0085f9b3c4fbf12e75476453d96ebfea83c2335e81`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 624.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `telegraf:latest` - unknown; unknown

```console
$ docker pull telegraf@sha256:63a4ee319c8113d725fbe1d3d638149c3f3f7631e9a7593fb1337526394aa1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6702179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5b48c173f602a773fe2ed60fb9a726c24556037661dc626356c98c879c7568`

```dockerfile
```

-	Layers:
	-	`sha256:769272838885da2612c1373b350466a9a48c48321753b53d2af6d0e65c071a06`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 6.7 MB (6687328 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e36ee595c1984bb4c227c957c4610dcbc40f6667577dd0adae83d9667e391165`  
		Last Modified: Mon, 20 Jul 2026 22:48:37 GMT  
		Size: 14.9 KB (14851 bytes)  
		MIME: application/vnd.in-toto+json
