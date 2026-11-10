## `traefik:salers`

```console
$ docker pull traefik@sha256:715c8eabb6986122c7ff229a19fa3f4d66f1e5543beb2874fc71f79688078e52
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `traefik:salers` - linux; amd64

```console
$ docker pull traefik@sha256:b13ddcafc9994083060dedb37595d3e4af1913135119c3cc796053801a2e4c5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56221022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b9dced31f53b6acbe659a6812c12879eb098137d9e38c9c87fa4afc46aa7e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:39:45 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:39:48 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.2/traefik_v3.8.0-rc.2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:39:48 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:39:48 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:39:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:39:48 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:39:48 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab137cb48ee8fd33ac135a674d08a56ea88f2fd7fbc4ca333b9cb76292e1f778`  
		Last Modified: Tue, 10 Nov 2026 21:40:10 GMT  
		Size: 412.0 KB (412032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4113f1060c622c56486986bf9c2ce5b88e2b0355d37215346ec0b1942f0b99`  
		Last Modified: Tue, 10 Nov 2026 21:40:12 GMT  
		Size: 52.0 MB (51954948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa9f3a23779be3208a72686c4b43365872dcae37855fa2c24e5c4f986b4388b`  
		Last Modified: Tue, 10 Nov 2026 21:40:10 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:b0002be832e3c5a397bda779a1f0ed46c3bb43433b5f68288b28239b5ca9eac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **838.3 KB (838308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0087657b16bbed11da5b6e8aa07a826c7c178960c9e2fb32b04678282f6b04`

```dockerfile
```

-	Layers:
	-	`sha256:bfc4d54199ef8ab5fce45e41008e6b64defe9df0e56a4d6e5d8c3b74da711cc0`  
		Last Modified: Tue, 10 Nov 2026 21:40:10 GMT  
		Size: 826.9 KB (826853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d12824f9bd69141c016c5c1f4e07cbff525674cde770865e01ff1075aefdfe`  
		Last Modified: Tue, 10 Nov 2026 21:40:10 GMT  
		Size: 11.5 KB (11455 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:salers` - linux; arm variant v6

```console
$ docker pull traefik@sha256:4f5c1856d10790f59ffd5a38b4d9af83553b9a800328cae45aa7a1843237a118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51585489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22990a8f236a34a33e0e413c91a803168cdc8dacfd5cfa4ccf1cc7c2e5291266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:47:39 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:47:42 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.2/traefik_v3.8.0-rc.2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:47:42 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:47:42 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:47:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:47:42 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:47:42 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0b1431a022e002318dd58ea869cbe88693c4fb1c240d7d7f983c6ce1a1cf87`  
		Last Modified: Tue, 10 Nov 2026 21:47:51 GMT  
		Size: 413.7 KB (413726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb65f271f845928ced6a8259a9bed0ff61120c31efbe5a382db1aca61187df41`  
		Last Modified: Tue, 10 Nov 2026 21:47:52 GMT  
		Size: 47.6 MB (47612993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb16ec750f0d17fb58f1d6c139e368cf9de8dec72d72ae03994b8d7544d1d25`  
		Last Modified: Tue, 10 Nov 2026 21:47:51 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:4b21e7e3010ff8c3268c3b8a3bd9321aee89cf83af2535b34d5e45f9c11c458c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 KB (11325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c6a3fdc623fa6c33fd77f83feadd330f77ab2b04bd671a3640f121e5ef15915`

```dockerfile
```

-	Layers:
	-	`sha256:0d2c431894dd4629ae14a936538e5ef3866def89143b4435865918a6e204787a`  
		Last Modified: Tue, 10 Nov 2026 21:47:51 GMT  
		Size: 11.3 KB (11325 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:salers` - linux; arm64 variant v8

```console
$ docker pull traefik@sha256:995aa17ba1af6e1468653bf424acb4e3ab6925380720a4080d26c4943725e71b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50877124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f381a11495f2a604809c3bde79c168972093f95767fa14c992409e863608f20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 21:41:25 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 10 Nov 2026 21:41:28 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.2/traefik_v3.8.0-rc.2_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 10 Nov 2026 21:41:28 GMT
COPY entrypoint.sh / # buildkit
# Tue, 10 Nov 2026 21:41:28 GMT
EXPOSE map[80/tcp:{}]
# Tue, 10 Nov 2026 21:41:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:41:28 GMT
CMD ["traefik"]
# Tue, 10 Nov 2026 21:41:28 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.2 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74db825ee3e97a11aecbf5d96a8c9a4efa15fce1e57c5d78f5c459296c016220`  
		Last Modified: Tue, 10 Nov 2026 21:41:50 GMT  
		Size: 415.6 KB (415560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f96c6b0398b133e69e9734b52cada9ed537d047eb83890f66de013e82a6d3a0`  
		Last Modified: Tue, 10 Nov 2026 21:41:51 GMT  
		Size: 46.3 MB (46270600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7ed3d9ee4e6954249c021647555b4628ab080e07cdc05ed1cc87908ea05f34`  
		Last Modified: Tue, 10 Nov 2026 21:41:50 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:c69638199e54bb907e4f73bad0836025b4a7e2a54ea2af24bd6393dee9d1aac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.8 KB (837808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c9d6c7d62dd4de60d00ee8dfdcc763bdeed0b80d2a11aed7109f86266ffa45`

```dockerfile
```

-	Layers:
	-	`sha256:c61952a8a84db78b3d171cd71bca73c26aeb9e4f99224fef15a85f7cd44077e4`  
		Last Modified: Tue, 10 Nov 2026 21:41:50 GMT  
		Size: 826.2 KB (826247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84b7c53fa646a0f8bde2e91202fec221899b12474b136e3747af60397b662c63`  
		Last Modified: Tue, 10 Nov 2026 21:41:50 GMT  
		Size: 11.6 KB (11561 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:salers` - linux; ppc64le

```console
$ docker pull traefik@sha256:0e5b7395b7d52fcf970fe355d47fcaeeb6132db04e6b3ec2ea068047dbd9e1b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49236733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d686b2b51fae87263697bae5a260bd9e003c2053f3fb011835b3b4d42aa5401c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 23:38:30 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 23:38:35 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.1/traefik_v3.8.0-rc.1_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 23:38:36 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 23:38:36 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 23:38:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 23:38:36 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 23:38:36 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.1 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ddb339a25aee19cd0de0fbeea29538765149acdf22d74d0f73d059e32d3dd7`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 416.0 KB (416038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43773db0f43c5dbc4546d4abeac9efc782e88a276281f4c48a231f681de44a4b`  
		Last Modified: Thu, 05 Nov 2026 23:39:23 GMT  
		Size: 45.0 MB (44998405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0cf75cde571d4e4124177fec1dcfb9076c85dfa623b82a14d1aa341834d540`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:37d7c32625dd632de1c3c5162bcab7930fc97aaded47b798af89d4e9ff2a2872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **838.5 KB (838536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab33b697477a596f65f112a0a55d075c0bc67f17529499aa993d4d9543c4b758`

```dockerfile
```

-	Layers:
	-	`sha256:78fbbd5d04a2f27719e637131b6f239dfbc829723faa2194d3e0a41873e7b5a2`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 827.0 KB (827041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c65a8f9a20b105f30bd2fae4aad70a0d0c69f180dc79c740e8926452110f718`  
		Last Modified: Thu, 05 Nov 2026 23:39:22 GMT  
		Size: 11.5 KB (11495 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:salers` - linux; riscv64

```console
$ docker pull traefik@sha256:2e0a4f6bde10751673eb73acfed52b22dea839652e8f73498a96a5f5db6cc8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53929217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:979f6d46036b58ce354b00845df61958772a00d78bd1f4e838eb5ead94ed9f36`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Tue, 03 Nov 2026 02:38:49 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Tue, 03 Nov 2026 02:39:02 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.1/traefik_v3.8.0-rc.1_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Tue, 03 Nov 2026 02:39:02 GMT
COPY entrypoint.sh / # buildkit
# Tue, 03 Nov 2026 02:39:02 GMT
EXPOSE map[80/tcp:{}]
# Tue, 03 Nov 2026 02:39:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 03 Nov 2026 02:39:02 GMT
CMD ["traefik"]
# Tue, 03 Nov 2026 02:39:02 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.1 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7d195904108c4681dfaee3eb6927da17c789c8c06e9f508aa53d7e59651289`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 412.5 KB (412544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05068992e6557e7f41087a180cac057b08a7a9c0c92adbcbcd35c1bb232166af`  
		Last Modified: Tue, 03 Nov 2026 02:43:25 GMT  
		Size: 49.9 MB (49935656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5140fdbf4863b58c836422fd7b36461255ef309094b6f41530304304475a2c25`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:b4343f76757d8e5532c9acb35ba2ec77d9e2fc25bba2898334aa3a62cf0ec8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **838.5 KB (838532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc4c9065910304adee507f120bfb5a16b79bafbaaf5f1b428417e3f4f2a815`

```dockerfile
```

-	Layers:
	-	`sha256:bd22a4de61740935b4677b047b6e52ad4cc27f68a98de5feecce573be1ef3239`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 827.0 KB (827037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6767c8ab9f6a4e55669c325cba1ede8856b9c6e32db281061b4235c08c9412d2`  
		Last Modified: Tue, 03 Nov 2026 02:43:18 GMT  
		Size: 11.5 KB (11495 bytes)  
		MIME: application/vnd.in-toto+json

### `traefik:salers` - linux; s390x

```console
$ docker pull traefik@sha256:3af7b74a1bede7da23dd43353a0e36c83ea31795ff5714a4a0960eca365eaadb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.2 MB (54191320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a593c85366c880f8e959a0e5d5d3ecb0d4b7b9fb2d32191b92083cc87247ca6f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["traefik"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:14:14 GMT
RUN apk --no-cache add ca-certificates tzdata # buildkit
# Thu, 05 Nov 2026 19:14:17 GMT
RUN set -ex; 	apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		armhf) arch='armv6' ;;         armv7) arch='armv7' ;; 		aarch64) arch='arm64' ;; 		x86_64) arch='amd64' ;; 		riscv64) arch='riscv64' ;; 		s390x) arch='s390x' ;; 		ppc64le) arch='ppc64le' ;; 		*) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;; 	esac; 	wget --quiet -O /tmp/traefik.tar.gz "https://github.com/traefik/traefik/releases/download/v3.8.0-rc.1/traefik_v3.8.0-rc.1_linux_$arch.tar.gz"; 	tar xzvf /tmp/traefik.tar.gz -C /usr/local/bin traefik; 	rm -f /tmp/traefik.tar.gz; 	chmod +x /usr/local/bin/traefik # buildkit
# Thu, 05 Nov 2026 19:14:17 GMT
COPY entrypoint.sh / # buildkit
# Thu, 05 Nov 2026 19:14:17 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 19:14:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 19:14:17 GMT
CMD ["traefik"]
# Thu, 05 Nov 2026 19:14:17 GMT
LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.8.0-rc.1 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556fd237ff53af59b6e6f4c0d728c4edd4586b5fc9f44c7fbf343485f0f9a0e6`  
		Last Modified: Thu, 05 Nov 2026 19:15:07 GMT  
		Size: 413.4 KB (413402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412b70c13b16c3152293947f7df90acbb10a45de57921614f8810c7bff1d7209`  
		Last Modified: Thu, 05 Nov 2026 19:15:08 GMT  
		Size: 50.1 MB (50056878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18d84bca2a554d7cbb5fe49364e140acaa689d1b1178e1fde81663542b30195`  
		Last Modified: Thu, 05 Nov 2026 19:15:07 GMT  
		Size: 370.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `traefik:salers` - unknown; unknown

```console
$ docker pull traefik@sha256:4e76e359e1e8c64b68b60dfc0f5ab13901d174005524db1825273e3327d24899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **838.5 KB (838465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac408958b9785918f1d96df8b37db8ced816a8d1947abdc5ee729e76e169e74d`

```dockerfile
```

-	Layers:
	-	`sha256:d5f2cf36b309118bd1d996c28d796b94a4d44623e47400e4734822c0366032fb`  
		Last Modified: Thu, 05 Nov 2026 19:15:07 GMT  
		Size: 827.0 KB (827011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:843b30e002cabcb9858b6b283d5298424509384e72227fe6b181afde67ab65a4`  
		Last Modified: Thu, 05 Nov 2026 19:15:07 GMT  
		Size: 11.5 KB (11454 bytes)  
		MIME: application/vnd.in-toto+json
